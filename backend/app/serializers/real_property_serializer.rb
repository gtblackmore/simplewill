class RealPropertySerializer < ActiveModel::Serializer
  attributes :id, :address, :city, :state, :zip
  belongs_to :user
end
