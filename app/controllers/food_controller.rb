class FoodController < ApplicationController

  def index
    @foods = Food.all
    @breakfast = Food.breakfast.take
    @snak_bar = Food.snak_bar.take
    @supper = Food.supper.take
    @bar = Food.bar.take
    @food_images = Banner.food.take.images
  end

end
