

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = [String]()
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
func swap(strings:inout [String], firstIndex: Int, secondIndex: Int) {
    let temp1 = strings[firstIndex]
    let temp2 = strings[secondIndex]
    strings[firstIndex] = temp2
    strings[secondIndex] = temp1
}
var sortedStrings: [String] = unsortedStrings; var totalSwaps = 0; var totalPasses = 0; var isSorted = false; var swapsThisTime = 0
print("Pass: 0, Swaps: 0/0, Array: \(sortedStrings)")
var line : String?
repeat {
    line = readLine()
    if line != nil {
        sortedStrings.append(line!)
    }
    
} while line != nil


while !isSorted {
    for pass in 1...sortedStrings.count - 1 {
        if sortedStrings[pass] < sortedStrings[pass - 1] {
            swap(strings: &sortedStrings, firstIndex: pass, secondIndex: (pass - 1))
            totalSwaps += 1
            swapsThisTime += 1
        }
    }
    totalPasses += 1
    print("Pass: \(totalPasses), Swaps: \(swapsThisTime)/\(totalSwaps), Array: \(sortedStrings)")
    swapsThisTime = 0
    isSorted = true
    for x in 1...sortedStrings.count - 1 {
        if sortedStrings[x] < sortedStrings[x - 1] {
            isSorted = false
        }
    }
}
print("Pass: \(totalPasses + 1), Swaps: 0/\(totalSwaps), Array: \(sortedStrings)")
