class UserSerializer < ActiveModel::Serializer
   attributes :id, :username#, :email
   has_many :items, through: :lists
   has_many :lists
end
