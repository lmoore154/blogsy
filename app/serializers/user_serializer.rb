class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :posts_count
end

class UserApiTokenSerializer < ActiveModel::Serializer
  attributes :username, :email, :posts_count, :api_token
end
