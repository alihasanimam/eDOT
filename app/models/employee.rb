class Employee < ActiveRecord::Base
  self.inheritance_column = nil

  TYPES = %w(admin doctor nurse technician chw)
  GENDERS = %w(male female)

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :type, presence: true


  def self.gender_options
    GENDERS.collect{|o| [o.humanize, o]}
  end

  def self.type_options
    TYPES.collect{|o| [o.humanize, o]}
  end
end
