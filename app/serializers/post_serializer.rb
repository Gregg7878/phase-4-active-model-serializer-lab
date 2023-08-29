class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :author_name

  has_many :tags

  def short_content
    object.content.length > 40 ? "#{object.content[0..39]}..." : object.content
  end

  def author_name
    object.author.name
  end
end

