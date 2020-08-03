class PersonalPropertySerializer < ActiveModel::Serializer
  attributes :id, :description, :address, :city, :state, :zip
  belongs_to :user
end
