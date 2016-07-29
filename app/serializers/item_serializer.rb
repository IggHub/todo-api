class ItemSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :name, :completed
  belongs_to :list
end
