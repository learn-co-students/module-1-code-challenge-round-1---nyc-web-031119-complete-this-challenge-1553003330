class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(str)
    self.all.select do |list|
      list.name == str
    end
  end

  def all_reviews
    Review.all
  end

  def customers
    my_reviews.map do |list|
      list.customer
    end
  end

  def my_reviews
    all_reviews.select do |list|
      list.restaurant == self
    end
  end

  def star_rating_array
    my_reviews.map do |list|
      list.rating
    end
  end

  def average_star_rating
    star_rating_array.reduce(:+) / star_rating_array.length
  end

  def review_content_array
    my_reviews.map do |list|
      list.content
    end
  end

  def length_of_word
    counter = 0
    review_content_array.each do |list|
      if list.length > counter
        counter = list.length
      end
    end
    counter
  end

  # def longest_review
  #   review_content_array.select do |list|
  #     list.length == length_of_word
  #   end
  # end

  def length_of_word_array
    review_content_array.map do |list|
      list.length
    end
  end

  def max_length
    length_of_word_array.max
  end

  def longest_review
    review_content_array.select do |list|
      list.length == max_length
    end
  end

end
