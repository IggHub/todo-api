class UserSerializer < ActiveModel::Serializer
   attributes :id, :name, :email
   has_many :items, through: :lists
   has_many :lists
end
