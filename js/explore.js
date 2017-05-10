function reversal(word){
	// var word = "HELLO";
	var storage = []
	var chars_arr = word.split('');
	// returns ["H", "E", "L", "L", "O"]
	storage << console.log(chars_arr.reverse().join(""));
	// returns ["O", "L", "L", "E", "H"]
}

reversal("banana")