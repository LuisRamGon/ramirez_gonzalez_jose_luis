List<int> arrayReplace(List<int> inputArray, int elemToReplace, int substitutionElem) {
  for (int i = 0; i < inputArray.length; i++) {
    if (inputArray[i] == elemToReplace) {
      inputArray[i] = substitutionElem;
    }
  }
  return inputArray;
}

void main() {
  List<int> inputArray = [1, 2, 1];
  int elemToReplace = 1;
  int substitutionElem = 3;
  List<int> result = arrayReplace(inputArray, elemToReplace, substitutionElem);
  print(result); // Output: [3, 2, 3]
}
