class Restaurant

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_reviews
    Review.all.select do |list|
      list.restaurant
    end
  end

  def self.find_by_name(name)
    self.all.select do |name|
      name.name
    end
    #given a string of restaurant name, returns the first restaurant that matches
  end

   def customers
     all_reviews.map do |list|
       list.customers
     end
     # Returns a **unique** list of all customers who have reviewed a particular restaurant.
   end

   def reviews
     all_reviews.map do |list|
       list.reviews
     # - returns an array of all reviews for that restaurant
   end

   def average_star_rating
     rating = all_reviews.map do |list|
       list.rating
     end
     sum = rating.inject(0) do |sum, num|
            sum += num
          end
          sum/all_reviews.review.rating.length
     # returns the average star rating for a restaurant based on its reviews
   end

  def longest_review
    all_reviews.map do |list|
      list.content.split
    end.length.sort.last
    # returns the longest review content for a given restaurant
  end
  end

end
