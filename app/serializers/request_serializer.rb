class RequestSerializer < ActiveModel::Serializer
  attributes :id, :question, :category
end
