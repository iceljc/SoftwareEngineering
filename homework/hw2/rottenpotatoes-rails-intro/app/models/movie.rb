class Movie < ActiveRecord::Base
    @all_ratings = ['G', 'PG', 'PG-13', 'R']

    def self.all_ratings 
        @all_ratings
    end
    
    def self.sorting(sort)
        if sort == nil
            self
        else
            self.order(sort)
        end
    end
    
    def self.with_rating(ratings)
        self.where(rating: ratings)
        # self.where("rating in (?)", ratings)
    end
end