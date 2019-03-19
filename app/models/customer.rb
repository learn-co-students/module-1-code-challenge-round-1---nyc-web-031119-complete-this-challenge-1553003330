class Customer

	@@all = []
  attr_accessor :first_name, :last_name
  attr_reader :review

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @review = review
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  	@@all
  end

  def self.find_by_name(full_name)
  	name_arr = full_name.split
  	self.all.find do |customer|
  		customer.first_name == name_arr[0] && customer.last_name == name_arr[1]
  	end
  end

  def self.find_all_by_first_name(name)
  	self.all.select { |customer| customer.first_name == name}
  end

  def self.all_names
  	arr = self.all.each {|customer| "#{@first_name} #{@last_name}" }
  end

end

c1 = Customer.new('David', 'Bernier')
c2 = Customer.new('mike', 'johnson')
c3 = Customer.new("david", "X")

puts Customer.find_by_name("David Bernier")
puts Customer.find_by_name("mike johnson")
puts Customer.find_all_by_first_name("David")
puts Customer.find_all_by_first_name("mike")
p Customer.all_names

