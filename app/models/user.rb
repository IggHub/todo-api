require 'bcrypt'

class User < ActiveRecord::Base
  #include 'bcrypt'
  has_many :lists
  has_many :items, through: :lists
  has_secure_password

  validates :username, presence: true
=begin
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
=end
end
