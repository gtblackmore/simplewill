class User < ApplicationRecord
  has_one :spouse
  has_many :children
  has_many :real_properties
  has_many :personal_properties
end
