require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require "pp"

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Borrowing and modifying the code from Exercise one, create 3 more stores:
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

surrey.save

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

whistler.save

yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

yaletown.save

# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.

# Loop through each of these stores and output their name and annual revenue on each line.

@mens_store = Store.where("mens_apparel = true")

@mens_store.each do |a_store|
  a_store_name = a_store.name
  a_store_revenue = a_store.annual_revenue
  puts "Men's apparel store #{a_store_name} generates #{a_store_revenue} annually."
end



# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

@womens_store = Store.where("womens_apparel = true" && "annual_revenue < 1000000")
pp @womens_store
