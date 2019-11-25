class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :image, :phone_number, :id
end