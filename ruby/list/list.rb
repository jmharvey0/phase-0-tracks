class TodoList

	def initialize(list)
		@list = list
	end

	def get_items
		return @list
	end

	def add_item(item)
		@list.push(item)
		return @list
	end

	def delete_item(item)
		#x = 0
		#while x < @list.length
			#if @list[x] == item
				#@list = @list.delete(x)
			#end
			#x += 1
		#end
		@list.each do |i|
			if i == item
				@list.delete(i)
			end
		return @list
		end
	end

	def get_item(index)
		return @list[index]
	end
end