class Api::V1::GraphTypesController < ApplicationController
  before_action :find_graph_type, only: [:create, :edit, :update, :destroy]

  def index
    @graph_types = GraphType.all
    render json: @graph_types
  end

  def update
    @graph_type.update(example_params)
    if @graph_type.save
      render json: @graph_type, status: :accepted
    else
      render json: 
        { errors: @graph_type.errors_full_messages },
        status: :unprocessible_entity
    end
  end

  private

  def graph_type_params
    params.permit(:id, :name)
  end

  def find_graph_type
    @graph_type = GraphType.find(params[:id])
  end
end
