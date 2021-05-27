#!/usr/bin/env ruby

##
# This program lets the user create a car
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-20
# frozen_string_literal: true

# This class adds a number to a stack
class Vehicle
  # Initializes the variables
  def initialize(license_plate_input, colour_input)
    @license_plate = license_plate_input
    @colour = colour_input
    @number_of_doors = 4
    @max_speed = 200
    @vehicle_speed = 0
  end

  # setter for the colour
  def set_colour(user_colour)
    @colour = user_colour
  end

  # getter for colour
  def get_colour
    @colour
  end

  # setter for license
  def set_license(user_license)
    @license_plate = user_license
  end

  # getter for license
  def get_license
    @license_plate
  end

  # getter for acceleration
  def accelerate(user_increase)
    raise ArgumentError if @vehicle_speed + user_increase > @max_speed

    @vehicle_speed += user_increase
  end

  # getter for deceleration
  def decelerate(user_decrease)
    raise ArgumentError if (@vehicle_speed - user_decrease).negative?

    @vehicle_speed -= user_decrease
  end
end
