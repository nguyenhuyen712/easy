module RestaurantsHelper
  def convert_list_categories restaurant_categories
    category_arr = []
    restaurant_categories.each do |category|
      category_arr << category.category.name
    end
    category_arr.join(" - ")
  end
end
