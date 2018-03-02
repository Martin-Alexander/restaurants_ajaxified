class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    @review.save

    # if @review.save
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   render "restaurants/show" 
    # end

    # render reviews/create.js.erb
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
