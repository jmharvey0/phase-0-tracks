class Todolist
    attr_reader :list 
    def initialize(list) 
        @list = list
    end
    def add_item(item)
      @list << item
    end
    def delete_item(item)
        list.delete(item)
        @list
    end
    def get_item(item_index)
        list[item_index]
    end 
    def get_items
        @list
    end
end