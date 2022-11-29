class AuthorSerializer < ActiveModel::Serializer
  # attributes :id
  attributes :name

  has_one :profile , serializer: ProfileSerializer
  has_many :posts, serializer: AuthorPostSerializer
end
