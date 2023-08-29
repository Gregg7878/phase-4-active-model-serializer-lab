class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  belong_to :profile, Serializer: ProfileSerializer
end
