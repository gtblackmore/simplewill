class ChildSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_name, :last_name, :birthdate
  belongs_to :user
end
