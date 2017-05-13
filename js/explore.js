function reversal(word){
	var storage = new Array();
	var chars_arr = word.split('');
	var reversed = chars_arr.reverse().join("");
	storage.push(reversed);
	console.log(chars_arr.reverse().join(""));
}

reversal("banana")