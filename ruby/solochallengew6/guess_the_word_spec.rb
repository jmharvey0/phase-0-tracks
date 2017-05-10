require_relative 'guess_the_word'
describe guess_the_word do
	let (:word){Game.new("country")}
	it "stores the word given on iniatlization" do
		expect(word.get_word).to eq "country"
	end