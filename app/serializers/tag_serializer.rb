class TagSerializer < ActiveModel::Serializer
  # attributes :id
  attributes :name

  has_many :posts
end
