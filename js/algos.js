// Solo Challenge

// Release 0: Find the longest Phrase
// Input: User provides an array of strings with different lengths
// Steps: Measure each string's length one by one, if the second string's length is larger than the first one's, define that as the longest.
// Repeat this process until all strings have been evaluated and the longest string is stored (defined) as such
// Output: Longest string according to length
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

// =======================================

arr = ["long phrase","mini phrase","longest phrase","an even longer phrase","longer phrase"]

longphrase = new LongestPhrase(arr)