class TagSerializer < ActiveModel::Serializer
  attributes :name
  has_many :associated_posts, serializer: PostSerializer
end
