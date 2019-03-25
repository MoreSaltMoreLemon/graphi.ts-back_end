class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :javascript, :likes, :graph_type
end