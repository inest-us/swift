import Foundation

//a simple array of sorted integers
let numberList : Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//the binary approach - O(log n) logarithmic time
func binarySearch(key: Int, left: Int, right: Int) -> Int {
    if (left <= right) {
        //find the value at the middle index
        let mid = Int((left + right) / 2)
        let midNumber = numberList[mid]
        
        if (midNumber == key) {
            return mid //found key
        }
        //use recursion to reduce the possible search range
        if (midNumber > key ) {
            //search on the left side
            return binarySearch(key: key, left: left, right: mid - 1)
        } else  {
            //search on the right side
            return binarySearch(key: key, left: mid + 1, right: right)
        }
    }
    return -1
}

print(binarySearch(key: 4, left: 0, right: 9)) //3


