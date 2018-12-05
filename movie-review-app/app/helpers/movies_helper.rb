module MoviesHelper
    def movie_poster(movie_id)
        @movie = Movie.find(movie_id)
        if @movie.poster.attached?
            image_tag @movie.poster, class: 'styles_image'
        else
            image_tag 'Default_Movie_Poster', class: 'styles_image'
        end
    end
end
