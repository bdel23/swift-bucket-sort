/* Bucket Sort
     - Use only when data set is uniformly distributed amongst known range
     - Runtime O(n)
 */

extension Array where Element == Int {
    func bucketSort(minValue: Int, maxValue: Int) -> [Int] {
        let range = maxValue - minValue + 1
        var buckets = [Int](repeatElement(0, count: range))
        var retArray = [Int]()
        
        for element in self {
            buckets[element-minValue] += 1
        }
        
        for i in 0 ..< buckets.count {
            for _ in 0 ..< buckets[i] {
                retArray.append(i)
            }
        }
        
        return retArray
    }
}

let numbers = [88,77,99,1,5,4,2,100,66,23,7,4]
let sortedNumbers = numbers.bucketSort(minValue: 0, maxValue: 100)
