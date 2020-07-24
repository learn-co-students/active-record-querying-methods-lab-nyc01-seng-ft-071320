class Show < ActiveRecord::Base

    def self.highest_rating
        Show.all.map{|show| show.rating}.max
    end

    def self.most_popular_show
        Show.all.max_by{|show| show.rating}
    end

    def self.lowest_rating
        Show.all.map{|show| show.rating}.min
    end

    def self.least_popular_show
        Show.all.min_by{|show| show.rating}
    end

    def self.ratings_sum
        Show.all.reduce(0){|sum, show| sum + show.rating}
    end

    def self.popular_shows
        Show.all.select{|show| show.rating > 5}
    end

    def self.shows_by_alphabetical_order
        Show.all.sort_by{|show| show.name}
    end

end
