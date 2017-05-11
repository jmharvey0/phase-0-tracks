require_relative 'guess_the_word.rb'
describe Game do
	let (:word){Game.new("country")}
	it "stores the word given on iniatlization" do
		expect(word.get_word).to eq "country"
	end
	# it "returns feedback to guesser (ex. c______ for guessing c for country" do
	# 	expect(word.guessing('y')).to eq "______y"
	# end
	# it "returns num of guesses left after guessing wrong" do
	# 	word.guessing('z')
	# 	expect(word.get_guesses).to eq 2
	# end
	it "returns feedback to guesser (ex. c______ for guessing c for country" do
		word.guessing('c')
		word.guessing('o')
		word.guessing('u')
		word.guessing('n')
		word.guessing('t')
		word.guessing('r')
		word.guessing('y')
		expect(word.get_feedback).to eq "country"
	end
end