class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
  has_many :items
  belongs_to :user
end
