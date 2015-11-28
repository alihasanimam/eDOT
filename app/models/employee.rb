class Employee < ActiveRecord::Base
  TYPES = %w(admin doctor nurse technician chw)
  GENDERS = %w(male female)
  include TypeOptions
  include GenderOptions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :inventories, as: :owner, dependent: :destroy
  belongs_to :health_center

  validates :name, :type, presence: true
end
