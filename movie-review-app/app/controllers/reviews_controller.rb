class ReviewsController < ApplicationController

    def new
       @review = Review.new 
    end
    
    def create
        @movie = Movie.find(params[:movie_id])
        @review = Review.new(review_params)
        if session[:user_id]
            @review.user_id = session[:user_id]
        end
        @review.movie_id = @movie.id
        @review.title = @movie.title
        
        @review.save
        redirect_to movie_path(@movie)
    end
    
    def destroy
        @user = User.find(params[:user_id])
        @review = @user.reviews.find(params[:id])
        @review.destroy
        redirect_to user_path(@user)
    end
    
private
    def review_params
        params.require(:review).permit(:body, :rating, :date) 
    end
end
