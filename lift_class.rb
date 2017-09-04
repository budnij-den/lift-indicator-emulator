class Lift 
		#MAXWEIGHT=400 
		FLOORS=(1..25) 

		attr_reader :current_floor 
		attr_accessor :destination_floor, :weight 

	def initialize 
		@current_floor=rand FLOORS 
		@weight=0 
	end 
	
	def show_floor
		#p self.current_floor
		puts "lift now in #{self.current_floor} floor"
	end

	def check_floor 
		return puts "enter correct value" unless destination_floor.instance_of? Fixnum 
		return puts "enter correct range" unless FLOORS.include? destination_floor 
		return puts "enter dissimilar floor" unless current_floor!=destination_floor 
		p self
	end 

	# def check_weight 
		# return puts "overload!" if @weight>MAXWEIGHT 
	# end 

	def move 
		if @destination_floor > @current_floor 
			move_up @destination_floor 
			else 
			move_down @destination_floor 
		end 
	end 

	def move_up destination_floor 
		while @destination_floor>@current_floor 
			@current_floor+=1 
			p "lift is in #{@current_floor} floor" 
			sleep 1 
		end 
	end 

	def move_down destination_floor 
		while @destination_floor<@current_floor 
			@current_floor-=1 
			p "lift is in #{@current_floor} floor" 
			sleep 1 
		end 
	end 
end 
