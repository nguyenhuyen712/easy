class RestaurantsController < ApplicationController
  def index
    # @restaurants = if params[:category_id]
    #   Restaurant.filter_category(params[:category_id])
    # else
    #   Restaurant
    # end.order_desc.page(params[:page]).per Settings.restaurants.page_size
    @restaurants = (params[:category_id].present? ? Restaurant.filter_category(params[:category_id]) : Restaurant)
      .order_desc.page(params[:page]).per Settings.restaurants.page_size
    @category = Category.restaurant.all
    @hot_restaurant_name = Restaurant.hot_restaurant.limit(Settings.restaurants.hot_restaurant_limit).pluck :name
  end
end
