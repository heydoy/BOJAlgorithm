// Read input
let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (n, d, k, c) = (input[0], input[1], input[2], input[3])

// Read sushi belt
var sushi = [Int]()
for _ in 0..<n {
    sushi.append(Int(readLine()!)!)
}

// Initialize variables
var maxNum = 0 // Maximum number of types

// Dictionary to keep track of sushi types
var sushiCounts = [Int: Int]()

// Initialize the dictionary with initial k sushi types
for i in 0..<k {
    sushiCounts[sushi[i], default: 0] += 1
}

// Add the coupon sushi
sushiCounts[c, default: 0] += 1

// Update the maximum number of types
maxNum = sushiCounts.count

// Loop through the remaining sushi
for i in 0..<n {
    // Remove the sushi going out of the window
    let outSushi = sushi[i]
    sushiCounts[outSushi]! -= 1
    if sushiCounts[outSushi] == 0 {
        sushiCounts.removeValue(forKey: outSushi)
    }
    
    // Add the new sushi entering the window
    let inSushi = sushi[(i + k) % n]
    sushiCounts[inSushi, default: 0] += 1
    
    // Add the coupon sushi
    sushiCounts[c, default: 0] += 1
    
    // Update the maximum number of types
    maxNum = max(maxNum, sushiCounts.count)
}

// Print the result
print(maxNum)
