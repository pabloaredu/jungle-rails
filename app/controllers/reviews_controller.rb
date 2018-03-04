class ReviewsController < ApplicationController

	def create
    @review = Review.create(review_params)
    @review.user_id = current_user.id
    @review.product_id = params[:product_id]
    if @review.save
      redirect_to :back
    else
      redirect_to "/"
    end
  end

  private

  def review_params
    params.require(:reviews).permit(:rating, :description)
  end

end
