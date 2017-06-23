// Solo Challenge

// Release 0: Find the longest Phrase

// Input: User provides an array of strings with different lengths
// Steps: Measure each string's length one by one, if the second string's length is larger than the first one's, define that as the longest.
// Repeat this process until all strings have been evaluated and the longest string is stored (defined) as such
// Output: Longest string according to length

// Release 1: Find a Key-Value Match

// Input: Two objects with several key-value pairs
// Steps: Check if the objects have at least one key-value pair in common, if so return true, if not false
// Output: True, if there's a match between the two objects, false if not

// Release 2: Generate Random Test Data

// Input: Function takes an integer (x) as its sole argument
// Steps: Function generates the number of strings requested in the argument (input)
//    Each word will be built with an assortment of random letters and will have a random length from 1 to 10 characters
// Output: An array of x strings, of random composition and length
 // ========================================

function LongestPhrase(array) {
  this.array = array;
  this.longest;
  lgth = 0;
  for(i = 0; i < array.length; i++) {
    if(array[i].length > lgth){
      lgth = array[i].length;
      longest = array[i];
    }
  }
  console.log(longest);
}

function MatchFinder (one,two) {
  this.one = one;
  this.two = two;
  var one_s = Object.keys(one).sort();
  var two_s = Object.keys(two).sort();
  var one_l = 0;
  var two_l = 0;
  var matches = [];
  var common = false;

  while (one_l < one_s.length
        && two_l < two_s.length) {
          if (one_s[one_l] === two_s[two_l]){
            matches.push(one_s[one_l]);
            one_l++;
            two_l++;
          }
          else if(one_s[one_l] < two_s[two_l]){
            one_l++;
          }
          else {
            two_l++;
          }
        }
 if (matches.length > 0){
   common = true;
 }
 console.log(common)
}

// Release 2

function DataGenerator(nitems) {
  var words = [];
  var word;
  this.nitems = nitems;
function shuffle() {
  var array = 'abcdefghijklmnopqrstuvwxyz'.split('');
  var str_lgth = Math.floor(Math.random() * 10) + 1;
    for (let i = str_lgth + 1; i; i--) {
        let n = Math.floor(Math.random() * i);
        [array[i - 1], array[n]] = [array[n], array[i - 1]];
    }
    letters = (array.slice(0, str_lgth));
    var word = letters.join("");
    words.push(word)
}

for (let i = 0; i <= nitems-1; i++) {
  shuffle();
}
  console.log(words)
}


// =======================================

// Release 0
// arr = ["long phrase","mini phrase","longest phrase","an even longer phrase","longer phrase"]

// animals = ["dog","horse","hippopotamus"]

// longphrase = new LongestPhrase(arr)
// // => an even longer phrase

// longphrasetoo = new LongestPhrase(animals
// // =>hippopotamus

// Release 1

// ONE = {name: "Steven", age: 54};
// TWO = {name: "Tamir", age: 54};
// THREE = {name: "Jason", country: "Panama"}
// FOUR = {animal: "elephant", color:"slate", legs: 4}

// pairs_a = new MatchFinder(ONE,TWO)
// // => true

// pairs_b = new MatchFinder(ONE,THREE)
// // => true

// pairs_c = new MatchFinder(THREE,FOUR)
// // => false

// Release 2

new_data = new DataGenerator(7)
