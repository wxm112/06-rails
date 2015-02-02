class MovieController <  ApplicationController

    def lookup
    end

    def error
    end

    def list
        @title = params[:title]
        url = "http://www.omdbapi.com/?s=#{@title}"
        raw_date = HTTParty.get(url)
        movie_date=JSON.parse raw_date
        @array = movie_date['Search']
        if movie_date['Response'] == 'False'
            render '/movie/error'
        elsif @array.count == 1
            redirect_to("/movie/result/#{@array[0]['Title'].gsub(' ', '+')}")
        end
    end


    def result
        @title = params[:title]
        url = "http://www.omdbapi.com/?t=#{params[:title]}"
        raw_date = HTTParty.get(url)
        movie_date=JSON.parse raw_date
        @poster = movie_date['Poster']
    end

end