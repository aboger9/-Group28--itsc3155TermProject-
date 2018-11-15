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
        #byebug
        #Movie.each do |movie|
            #if(movie.title == @review.title)
                #@review.movie_id = movie.id
            #end
        #end
        if @review.save
            #byebug
            redirect_to '/users'
        else
            redirect_to '/users'
        end
    end
    
    private
        def review_params
           params.require(:review).permit(:title, :body, :rating, :date) 
        end
end
