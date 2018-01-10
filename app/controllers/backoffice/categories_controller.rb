class Backoffice::CategoriesController < BaseController

  def index
    @categories = Category.all
  end

  def edit

  end

end
