require_relative 'wordgame'

describe WordGame do 
	let(:word) {WordGame.new(["hello"])}

	it "stores the word given on initialization" do
		expect(word.get_word).to eq ["hello"]
	end

	it "breaks the word into a string of letters" do
		expect(word.word_breaker). to eq ["h", "e", "l", "l", "o"]
	end

	it "shows dashes for each letter" do
		expect(word.space_writer). to eq ["_ _ _ _ _ "]
	end

end

#EXAMPLE CODE
# describe TodoList do
#   let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

#   it "stores the list items given on initialization" do
#     expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
#   end

#   it "adds an item to the list" do
#     list.add_item("mop")
#     expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
#   end

#   it "deletes an item" do
#     list.delete_item("do the dishes")
#     expect(list.get_items).to eq ["mow the lawn"]
#   end

#   it "retrieves an item by index" do
#     expect(list.get_item(0)).to eq "do the dishes"
#   end
# end