class AuthorsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    authors = Author.all 
    # render json: authors
    # render json: authors, include: ['profile', 'posts', 'posts.tags']
    render json: authors, include: ["profile","posts", "posts.tags", "posts.title" , "posts.short_content"]

  end

  def show
    author = Author.find(params[:id])
    # render json: author
    # render json: author, include: ['profile', 'posts', 'posts.tags']
    render json: author, include: ["profile","posts", "posts.tags", "posts.title" , "posts.short_content"]

  end

  private

  def render_not_found_response
    render json: { error: "Author not found" }, status: :not_found
  end

end
