class ReviewsController < ApplicationController
    #def create
        #@user = User.find(params[:user_id])
       # @review = @user.reviews.create(review_params)
       # redirect_to user_path(@user)
   # end
    
    def new
       @review = Review.new 
    end
    
    def create
        @review = Review.new(review_params)
        
        if @review.save
            redirect_to '/users'
        else
            @user = User.find(params[:user_id])
            redirect_to user_path(@user)
        end
    end
    
    
private
    def review_params
        params.require(:review).permit(:title, :body, :rating, :date) 
    end
end
