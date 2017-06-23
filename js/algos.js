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
  console.log(one_s);
  console.log(two_s);

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
            b_l++;
          }
        }
 if (matches.length > 0){
   common = true;
 }
// return matches;
 console.log(common)
}


// =======================================

// arr = ["long phrase","mini phrase","longest phrase","an even longer phrase","longer phrase"]

// animals = ["dog","horse","hippopotamus"]

// longphrase = new LongestPhrase(arr)
// // => an even longer phrase

// longphrasetoo = new LongestPhrase(animals
// // =>hippopotamus