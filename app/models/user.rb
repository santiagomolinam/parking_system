#:nodoc:
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :vehicles
  # Personal validations for excersice.
  validates :first_name, presence: true, length: { maximum: 75, message: 'maximum length 75 characters' }, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters' }
  validates :last_name, presence: true, length: { maximum: 75, message: 'maximum length 75 characters' }, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters' }
  # validates :email, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  #validates_date :birthdate, presence: true, :on_or_before => lambda { Date.current }
end
