class Admin::RestaurantsController < Admin::BaseController
  load_and_authorize_resource

  def index
  end

  def new
  end

  def create
    if @restaurant.save
      params[:restaurant_categories].each do |category_id|
        @restaurant.restaurant_categories.create category_id: category_id
      end
      flash[:success] = "Nhà hàng đưọc thêm mới thành công"
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  private
  def restaurant_params
    params.require(:restaurant).permit :name, :address, :lat, :long, :min_price,
      :max_price, :open_time, :close_time, :free_delivery_fee, :delivery_fee, :description
  end
end
