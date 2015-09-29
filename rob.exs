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

apps_options = [
	{
		:installed, nil
	}
]

devices_options = [
	{
		:running, nil
	}
]

list_options = [
	{
		:devices, devices_options
	},
  {
		:apps, apps_options
	}
]

asc_options =		[
	{
		:uall , nil
	},
	{
		:list , list_options
	},
	{
		:start, nil
	},
	{
		:stop, nil
	},
	{
		:aapp, nil
	},
	{
		:rapp, nil
	}
]


options = [{:asc, asc_options}]



defmodule Recursion do
	
	
	def print_options(options, n) do
		IO.puts "Tail -> #{tl(options)}"
		IO.puts "N ->#{n}"
		cond do
			n == 0->
				IO.puts("Hola cero")
			n > 0 ->
				IO.puts("Aún mayor que cero")
				print_options(tl(options),n-1)
		end
		
		

	end
end



options=OptionParser.parse(["asc list devices running"])
#IO.puts "Tail -> #{elem(options,1)}"
new_options=elem(options, 1)
#IO.puts "N ->#{n}"



IO.puts is_binary new_options
IO.puts is_list new_options
tuple0 = elem(List.to_tuple(new_options),0)
splited_elements = String.split(tuple0)
IO.puts "Size is #{length splited_elements}"
Recursion.print_options(splited_elements,0)
Recursion.print_options(splited_elements,2)
