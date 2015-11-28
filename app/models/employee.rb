class Employee < ActiveRecord::Base
  TYPES = %w(admin doctor nurse technician chw)
  GENDERS = %w(male female)

  include TypeOptions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :inventories, as: :owner, dependent: :destroy

  validates :name, :type, presence: true


  def self.gender_options
    GENDERS.collect{|o| [o.humanize, o]}
  end
end
