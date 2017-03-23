class Admin::CategoriesController < Admin::BaseController
  load_and_authorize_resource

  def index
  end

  def create
    if @category.save
      flash[:success] = "Thêm mới thành công"
    else
      flash[:danger] = "Thêm mới thất bại: #{@category.errors.full_messages.first}"
    end
    redirect_back fallback_location: root_path
  end

  private
  def category_params
    params.require(:category).permit :name, :category_type
  end
end
