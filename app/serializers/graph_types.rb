class GraphTypeSerializer < ActiveModel::Serializer
  has_many :examples

  attributes :id, :name

  class ExampleSerializer < ActiveModel::Serializer
    belongs_to :graph_type
    attributes :id, :title, :description, :javascript, :likes
  end
end