require 'rubygems'
require 'sinatra'
require 'shotgun'
require_relative 'lift_class.rb'

get '/' do
	l=Lift.new 
	@current=l.current_floor
	@floor=@current.to_s
	erb :index
	# puts "enter destination floor" 
	# l.destination_floor=gets.chomp.to_i 
	# l.move if l.check_floor 
	# l.show_floor
end