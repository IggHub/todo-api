class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]
         #:recoverable,
  has_many :lists
  has_many :items, through: :lists

  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
