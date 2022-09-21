# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----------'

# Your code goes here ...

@all_revenue = Store.sum(:annual_revenue)

@count_all = Store.count(:annual_revenue)

@average_all = @all_revenue / @count_all

puts @average_all
puts Store.where(Store.arel_table[:annual_revenue].gt(1000000)).count