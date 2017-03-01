class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :posts_count
end
