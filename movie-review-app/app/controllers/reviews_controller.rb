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
        @movie = Movie.find(params[:movie_id])
        @review = Review.new(review_params)
        
        @review.save
        redirect_to movie_path(@movie)
    end
    
    
private
    def review_params
        params.require(:review).permit(:title, :body, :rating, :date) 
    end
end
