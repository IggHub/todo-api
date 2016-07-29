class List < ActiveRecord::Base
  belongs_to :user
  has_many :items
  validates :name, presence: true
  validates :user, presence: true
end
