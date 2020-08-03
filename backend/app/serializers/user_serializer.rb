class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :address, :city, :state, :zip, :email, :birthdate, :aliases
  has_many :children
  has_one :spouse
  has_many :real_properties
  has_many :personal_properties
end