class PostSerializer < ActiveModel::Serializer
  # attributes :id
  # attributes :title, :content
  # belongs_to :author
  # has_many :tags
  attributes :title, :short_content, :tags, :content

  belongs_to :author

  def short_content
    "#{object.content[0..39]}..."
  end
end
