#!/usr/bin/env ruby

##
# This program lets a user create a car.
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-20
# frozen_string_literal: true

load 'user_vehicle.rb'

begin
  # Asks user to input colour and license for first car
  puts 'Enter the license plate number of the first car: '
  license_input = gets.chomp
  puts 'Enter the colour of the first car: '
  car_colour = gets.chomp

  first_car = Vehicle.new(license_input, car_colour)

  # Prints whats in the first car
  puts
  puts 'Here is your first car!'
  puts "License Plate Number: #{first_car.get_license}"
  puts "Colour: #{first_car.get_colour}"

  # Asks user to input colour and license for the second car
  puts
  puts 'Enter the license plate number of the second car: '
  license_input = gets.chomp
  puts 'Enter the colour of the second car: '
  car_colour = gets.chomp

  second_car = Vehicle.new(license_input, car_colour)

  # Prints whats in the second car
  puts
  puts 'Here is your second car!'
  puts "License Plate Number: #{second_car.get_license}"
  puts "Colour: #{second_car.get_colour}"

  # Asks user to input another license plate
  puts
  puts 'Uh oh! You need to change your license plate!: '
  license_input = gets.chomp
  second_car.set_license(license_input)
  puts "Your new license plate number is: #{second_car.get_license}"
  
  # Asks user to input another colour
  puts
  puts 'You chipped the paint! Repaint your second car!: '
  car_colour = gets.chomp
  puts
  second_car.set_colour(car_colour)
  puts "The colour of your new paint job is: #{second_car.get_colour}"

  # Asks user to input the speed
  puts
  puts "You're cruising on the road, enter your speed (km/h)! "
  car_speed = gets.chomp.to_i
  puts "The car is travelling at #{second_car.accelerate(car_speed)}km/h"

  # Asks user to input the braking
  puts
  puts 'Enter how much you want to decelerate (km/h): '
  car_speed = gets.chomp.to_i
  puts "The car is travelling at #{second_car.decelerate(car_speed)}km/h"
  puts
  puts 'Done'
rescue StandardError
  puts
  puts 'Error.'
end
