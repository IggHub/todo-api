class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :permission
  has_many :items
  belongs_to :user
end
