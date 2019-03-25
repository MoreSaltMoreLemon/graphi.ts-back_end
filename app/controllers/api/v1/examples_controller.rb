class Api::V1::ExamplesController < ApplicationController
  before_action :find_example, only: [:create, :edit, :update, :destroy]

  def index
    @examples = Example.all
    render json: @examples
  end

  def update
    @example.update(example_params)
    if @example.save
      render json: @example, status: :accepted
    else
      render json: 
        { errors: @example.errors_full_messages },
        status: :unprocessible_entity
    end
  end

  private

  def example_params
    params.permit(:id, :title, :description)
  end

  def find_example
    @example = Example.find(params[:id])
  end
end
