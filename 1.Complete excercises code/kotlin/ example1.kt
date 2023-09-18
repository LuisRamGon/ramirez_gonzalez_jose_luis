fun allLongestStrings(inputArray: Array<String>): Array<String> {
    val longestStrings = mutableListOf<String>()
    var maxLength = 0

    for (str in inputArray) {
        if (str.length > maxLength) {
            maxLength = str.length
            longestStrings.clear()
            longestStrings.add(str)
        } else if (str.length == maxLength) {
            longestStrings.add(str)
        }
    }

    return longestStrings.toTypedArray()
}

fun main() {
    val inputArray = arrayOf("aba", "aa", "ad", "vcd", "aba")
    val result = allLongestStrings(inputArray)
    println(result.joinToString(", ")) // Output: aba, vcd, aba
}