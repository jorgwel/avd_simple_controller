#Io.puts "Hello puts  Hello my "
#has_more_params = fn list_of_params -> length list_of_params
# end

#IO.puts(has_more_params.([1,2,3]))

#  def print_multiple_times(msg, n) when n <= 1 do
#    IO.puts msg
#  end

#  def print_multiple_times(msg, n) do
#    IO.puts msg
#    print_multiple_times(msg, n - 1)
#  end
defmodule Recursion do


	apps_options_level_3_container = [
		{
			:installed, "Comando Show :installed apps"
		}
	]

	devices_options_level_3_container = [
		{
			:running, "Show :running devices"
		}
	]

	list_options_level_2_container = [
		{
			:devices, devices_options_level_3_container #Show all devices
		},
		{
			:apps, apps_options_level_3_container #Show all apps
		}
	]

	asc_options_level_1_container =		[
		{
			:uall , "Uninstall all"
		},
		{
			:list , list_options_level_2_container #Here should be an error, what should I list?
		},
		{
			:start, "Start emulators"
		},
		{
			:stop, "Stop emulators"
		},
		{
			:aapp, "Add an app"
		},
		{
			:rapp, "Remove an app"
		}
	]


	asc = [{:asc, asc_options_level_1_container}]



	
	def print_options(options, last, next, n) do
		first = self.asc[String.to_atom("asc")]
#		IO.puts "#{self.apps_options_level_3_container}"
		IO.puts "#{first}"
		#cond do
		
		# (length options) == 3 ->
		# 	IO.puts("Hola somos 3")
		# (length options) == 2 ->
		# 	IO.puts("Hola somos 2")
		# (length options) == 1 ->
		# 	IO.puts("Hola somos 1")
		
		#   find_option()
		# true ->
		# 	IO.puts("Error!")
		
		#			n > 0 ->
		#				IO.puts("Aún mayor que cero")
		#				IO.puts(options)
		#				head=hd(options)
		#				IO.puts(head)
		#				IO.puts(is_list head)
		
		#				print_options(head,n-1)
		#end
	end
	
end



#options=OptionParser.split(System.argv)
#IO.puts "Tail -> #{elem(options,1)}"
#IO.puts options
#IO.puts is_list (IO.inspect System.argv)


#new_options=elem(options, 1)
#IO.puts "N ->#{n}"


options=IO.inspect System.argv
# IO.puts is_binary new_options
# IO.puts is_list new_options
# tuple0 = elem(List.to_tuple(new_options),0)
# splited_elements = String.split(tuple0)
# IO.puts "Size is #{length splited_elements}"
Recursion.print_options(options,nil,nil,0)
#Recursion.print_options(options,6)
