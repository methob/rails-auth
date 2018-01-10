class Backoffice::CategoriesController < BaseController
  def index
    @categories = Category.all
  end

  def edit; end

  def create
    @category = Category.new(params_category)

    if @category.save
      redirect_to backoffice_categories_path, notice: 'A Categoria foi salva'
    else
      render :new
    end
  end

  def new
    @category = Category.new
  end

  private

  def params_category
    params.require(:category).permit(:description)
  end
end
