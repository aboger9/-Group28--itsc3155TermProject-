class ReviewsController < ApplicationController

    def new
       @review = Review.new 
    end
    
    def create
        @movie = Movie.find(params[:movie_id])
        @review = Review.new(review_params)
        @review.user_id = session[:current_user_id]
        @review.movie_id = @movie.id
        
        @review.save
        redirect_to movie_path(@movie)
    end
    
    
private
    def review_params
        params.require(:review).permit(:title, :body, :rating, :date) 
    end
end
