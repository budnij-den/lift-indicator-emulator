require 'rubygems'
require 'sinatra'
require 'shotgun'
require_relative 'lift_class.rb'

l=Lift.new 

get '/' do
	@current=l.current_floor
	@floor=@current.to_s
	erb :index
	# puts "enter destination floor" 
	# l.destination_floor=gets.chomp.to_i 
	# l.move if l.check_floor 
	# l.show_floor
end

post '/' do
	@destination_floor=params[:destination_floor].to_i
	l.destination_floor=@destination_floor
	l.move
	erb :index
end