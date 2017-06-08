class PostSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :title, :body, :upvotes
  class UserSerializer < ActiveModel::Serializer
    attributes :username
  end
end
