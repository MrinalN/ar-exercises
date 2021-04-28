require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Lopez", last_name: "George", hourly_rate: 40)

@store1.employees.create(first_name: "Jones", last_name: "Leslie", hourly_rate: 95)
@store1.employees.create(first_name: "Yukon", last_name: "Potato", hourly_rate: 200)
@store1.employees.create(first_name: "Yi", last_name: "Matsui", hourly_rate: 60)
@store1.employees.create(first_name: "Kirk", last_name: "James", hourly_rate: 200)