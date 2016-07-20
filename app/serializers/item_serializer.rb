class ItemSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :name
  belongs_to :list
end
