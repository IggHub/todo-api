class List < ActiveRecord::Base
  belongs_to :user
  has_many :items
  validates :name, presence: true
  validates :user, presence: true

#  before_save {self.permission ||= :private}
#  enum permission: [:private, :viewable, :open]
#  validates :permission, inclusion: { in: %w(private viewable open),
#  message: "%{value} not valid permission. Available permission: private, viewable, open" }
  validates_inclusion_of :permission, :in => %w(private viewable open), :message => "Choose either private, viewable, or open permission"
end
