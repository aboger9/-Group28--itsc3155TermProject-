class ReviewsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @review = @user.reviews.create(review_params)
        redirect_to user_path(@user)
    end
    
    #def edit
        #@review = Review.find(params[:id])
    #end
    
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to user_path(@user)
    end
    
    private
        def review_params
           params.require(:review).permit(:title, :body) 
        end
end
