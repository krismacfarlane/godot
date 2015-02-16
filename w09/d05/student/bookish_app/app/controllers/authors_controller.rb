class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find_by(id: params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.create author_params
    redirect_to author_path(author)
  end

  def destroy
    Author.destroy params[:id]
    redirect_to authors_path
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    author = Author.find(params[:id])
    author.update author_params
    redirect_to author_path(author)
  end

  private

  def author_params
    params.require(:author).permit(
      :name,
      :born_on,
      :died_on,
      :gender,
      :has_pseudonyn
    )
  end

end
