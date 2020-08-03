class SpouseSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name
  belongs_to :user
end
