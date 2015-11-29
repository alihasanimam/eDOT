class Medication < ActiveRecord::Base
  belongs_to :patient

  before_create :initialize_days

  private
  def initialize_days
    (1..31).each do |day|
      self.days[day] = nil
    end
  end
end
