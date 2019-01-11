cclass AuthorsController < ApplicationController
  def create
    @author = Author.new(author_params)

    if !@author.save
      render :new
    else
      redirect_to author_path(@author)
    end
  end


  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end


  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
