class Api::V1::UserExamplesController < ApplicationController
  before_action :find_example, only: [:create, :edit, :update, :destroy]

  def index
    @user_examples = UserExample.all
    render json: @user_examples
  end

  def create
    @user_example = UserExample.create(
                        title: user_example_params[:title],
                        description: user_example_params[:description],
                        javascript: user_example_params[:javascript],
                        graph_type: user_example_params[:graph_type],
                        image: user_example_params[:image],
                        likes: 1)
    render json: @user_example
  end

  # def update
  #   @user_example.update(user_example_params)
  #   if @user_example.save
  #     render json: @user_example, status: :accepted
  #   else
  #     render json: 
  #       { errors: @user_example.errors_full_messages },
  #       status: :unprocessible_entity
  #   end
  # end

  private

  def user_example_params
    params.permit(:id, :title, :description, :javascript, :graph_type, :image, :likes)
  end

  def find_user_example
    @user_example = UserExample.find(params[:id])
  end
end
