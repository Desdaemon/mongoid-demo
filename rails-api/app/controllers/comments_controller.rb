# typed: true
class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show update destroy]
  def initialize
    @comments = T.let [], T::Array[Comment]
    @comment = T.let (T.unsafe nil), Comment
    super
  end

  # GET /comments
  def index
    @comments = Comment.all.to_a

    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # POST /comments
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = T.unsafe Comment.find(params[:id])
  rescue Mongoid::Errors::DocumentNotFound
    render status: :not_found
  end

  # Only allow a trusted parameter "white list" through.
  def comment_params
    params.require(:comment).permit(:name, :message, :post_id)
  end
end
