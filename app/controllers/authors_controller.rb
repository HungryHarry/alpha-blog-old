class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save
  end

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name, :email_address)
    end

end
