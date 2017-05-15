// RELEASE 0
// function takes an array of words or phrases
// function returns the longest word or phrase in the array
var lengthArr = ["long phrase","longest phrase","longer phrase"]
var characterArr = []
	for (i = 0; i < lengthArr.length; i++){
		characterArr.push(lengthArr[i].length);
	}
	// console.log(characterArr);
	var max = Math.max(...characterArr);
	//returns the number 14, which sits at index 1 of array
	for (i = 0; i < lengthArr.length; i++){
		if (lengthArr[i].length == max){
			console.log(lengthArr[i])
		}
	}


//RELEASE 1
//take two objects and check to see if the objects share at least 1 key/value pair

// yourFunction1({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true
// yourFunction2({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true

//check the name of the key symbol in the fun1 and fun2
//if key symbol name is the same, check to see if the key in fun1 is the same as the key in fun 2
// if true, return true; else return false
//else, check the name of the value symbol in fun1 and fun2
//if value symbol is the same, check to see if the value in fun1 is the same as the value in fun2
//if true, return true, else return false

// function compare(pair1, pair2) {
// 	var pair1SymbolArr = [];
// 		pair1SymbolArr = Object.keys(pair1);
// 	var pair2SymbolArr = [];
// 		pair2SymbolArr = Object.keys(pair2);
// 	var pair1ValueArr = [];
// 	var pair2ValueArr = [];


// 	//check key symbol
// 	//if key symbol match, check key value
// 	if (pair1SymbolArr[0] == pair2SymbolArr[0]){

// 	}
		//if key value match
			//return true
		//else
			//return false
		//end
	//end

	//check value symbol
	//if value symbol match, check value value
		//if value value match
			//return true
		//else
			//return false
		//end
	//end


	// var key_arr = []
	// var key_arr = Object.keys(pair1);
	// if var key_arr[0] == var key_arr[1];
		// for (var key in pair1) {
			// value_arr << pair1[key];
// 		}

//check values
// var value_arr = []


// }


// RELEASE 2
// function takes length (integer)
// function returns an array with length number of strings
// strings returned should be of randomly varying length (1-10 letters) 
//hint: will need to generate a random number