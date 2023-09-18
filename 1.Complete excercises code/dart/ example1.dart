
List<String> allLongestStrings(List<String> inputArray) {
  List<String> longestStrings = [];
  int maxLength = 0;

  for (String str in inputArray) {
    if (str.length > maxLength) {
      maxLength = str.length;
      longestStrings = [str]; // Reset the list with the new longest string
    } else if (str.length == maxLength) {
      longestStrings.add(str); // Add to the list if it has the same length as the current longest
    }
  }

  return longestStrings;
}

void main() {
  List<String> inputArray = ["aba", "aa", "ad", "vcd", "aba"];
  List<String> result = allLongestStrings(inputArray);
  print(result); // Output: ["aba", "vcd", "aba"]
}