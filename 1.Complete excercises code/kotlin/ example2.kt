fun arrayReplace(inputArray: MutableList<Int>, elemToReplace: Int, substitutionElem: Int): MutableList<Int> {
    for (i in 0 until inputArray.size) {
        if (inputArray[i] == elemToReplace) {
            inputArray[i] = substitutionElem
        }
    }
    return inputArray
}

fun main() {
    val inputArray = mutableListOf(1, 2, 1)
    val elemToReplace = 1
    val substitutionElem = 3
    val result = arrayReplace(inputArray, elemToReplace, substitutionElem)
    println(result) // Output: [3, 2, 3]
}