module ConfigFile
  @@yaml_cache = {}

  def self.unstub
    @@yaml_cache = {}
  end

  def self.stub(config_name, value)
    raise "config settings can only be set via config file" unless Rails.env.test?
    @@yaml_cache[config_name] ||= {}
    @@yaml_cache[config_name][Rails.env] = value
  end

  def self.load(config_name, with_rails_env=:current)
    with_rails_env = Rails.env if with_rails_env == :current

    if @@yaml_cache[config_name] # if the config wasn't found it'll try again
      return @@yaml_cache[config_name] if !with_rails_env
      return @@yaml_cache[config_name][with_rails_env]
    end

    config = nil
    path = File.join(Rails.root, 'config', "#{config_name}.yml")
    if File.exist?(path)
      config_string = ERB.new(File.read(path))
      config = YAML.load(config_string.result)

      if config.respond_to?(:with_indifferent_access)
        config = config.with_indifferent_access
      else
        config = nil
      end
    end
    @@yaml_cache[config_name] = config
    config = config[with_rails_env] if config && with_rails_env
    config
  end
end
