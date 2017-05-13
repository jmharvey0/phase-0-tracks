// function: reverse
// input: string
// steps:
// 	walk through the string starting from the end
// 	and add each character together into the reversed string
// output: reversed string

function reverse(str){
	var revStr = '';
	for (var i = str.length - 1; i >= 0; i--) {
		revStr += str[i];
	}
	return revStr
}

//DRIVER CODE--------------------------------------------------------------------
if (1 == 1) {
	console.log(reverse("hello"));
} else {
	console.log("oops");
}
