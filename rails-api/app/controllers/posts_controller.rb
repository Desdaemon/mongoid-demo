# typed: true
class PostsController < ApplicationController
  before_action :set_post, only: %i[show update destroy]

  # GET /posts
  def index
    @posts = Post.asc(:asd).descending(:asd).to_a
    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new post_params
    @post = Post.find_by! name: 'asd'

    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = T.unsafe Post.find params[:id]
  rescue Mongoid::Errors::DocumentNotFound => e
    render status: :not_found, plain: e.message
  end

  # Only allow a trusted parameter "white list" through.
  sig {returns T::Hash[T.untyped, T.untyped]}
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
