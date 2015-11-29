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

  def admin?
    self.type == 'admin'
  end

  def doctor?
    self.type == 'doctor'
  end

  def nurse?
    self.type == 'nurse'
  end

  def technician?
    self.type == 'technician'
  end

  def chw?
    self.type == 'chw'
  end
end
