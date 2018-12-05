//: [Previous](@previous)

import Foundation

var lines: [String] = []

if let filepath = Bundle.main.path(forResource: "input", ofType: "txt"),
    let input = try? String(contentsOfFile: filepath) {

     lines = input.split(separator: "\n").map(String.init).sorted()
    
    
}

func identifyGuard(entry: String) -> Int? {
    
    if let regex = try? NSRegularExpression(pattern: "Guard #(\\d+)", options:[]) {
        
        let matches = regex.matches(in: entry, options: [], range: NSRange( entry.startIndex..., in: entry))
      return matches.compactMap { result in
            Range(result.range(at: 1), in: entry)
            }.compactMap { Int(entry[$0])}.first
    }
    return nil
}

var guards: [Int: [String]] = [:]
var currentGuard: Int?
lines.forEach { line in

    if let guardNo = identifyGuard(entry: line) {
        currentGuard = guardNo
    } else if let currentGuard = currentGuard {
        guards[currentGuard, default:[]].append(line)
    }
//    let timestamp = line.prefix { $0 != "]" }.dropFirst()
//    let asleep = line.contains("falls asleep")
//    let wakeup = line.contains("wakes up")
//    let startShift = line.contains("begins shift")
//    let guardNumber = identifyGuard(entry: line)
//    print(timestamp, asleep, wakeup, startShift, guardNumber ?? "none")


}


func minutes(from entry: String) -> Int? {
    if let endPosition = entry.firstIndex(of: "]"),
        let startPosition = entry.index(endPosition, offsetBy: -2, limitedBy: entry.startIndex) {
        return Int(entry[startPosition..<endPosition])
    }
    
    return nil
}

minutes(from: "[1518-07-06 00:08] falls asleep")
//guards.map  { print($0.key, $0.value.count % 2 == 0) }
let guardTimes = guards.mapValues { log ->  [(sleep: Int, wake: Int)] in
    var times: [(sleep: Int, wake: Int)] = []
    
    for index in stride(from: log.startIndex, to: log.endIndex, by: 2) {
        let sleep = minutes(from: log[index])!
        let wake = minutes(from: log[index+1])!
        times.append((sleep: sleep, wake: wake))
    }
    
    return times
}
guardTimes[2503]!.map {
    print($0.wake - $0.sleep)
}
let totals = guardTimes.mapValues { logs in
    logs.map { $0.wake - $0.sleep }.reduce(0, +)
}
let bags = guardTimes.mapValues { logs -> [Int:Int] in
    var bag = [Int:Int]()
    for log in logs {
        for sec in log.sleep..<log.wake {
            bag[sec, default:0] += 1
        }
    }
    return bag
}
let popular = bags.map { ($0.key, $0.value.max { a, b in a.value < b.value }!)}
print(popular)
let mostPopular = popular.max { a, b in a.1.value < b.1.value }!
print(mostPopular)
print(mostPopular.0 * mostPopular.1.0)
let max = totals.max { a, b in a.value < b.value }
let sleepiest = max!.key
print(max!)
let times = guardTimes[sleepiest, default:[]]
print(times)
var timebag = [Int:Int]()
for time in times {
    for sec in time.sleep..<time.wake {
        timebag[sec, default:0] += 1
    }
}

print(34*1987)
print(timebag.max {a,b in a.value < b.value }!)
let aLog = guards[2503]!

let arr = [1,2,3,4,5,6,7,8,9,10].map { $0 * 3 }
var index = arr.startIndex
//while index.distance(to: arr.endIndex) > 1 {
//    print(arr[index], arr[index+1])
//    
//}

for index in stride(from: aLog.startIndex, to: aLog.endIndex, by: 2) {
    let sleep = minutes(from: aLog[index])!
    let wake = minutes(from: aLog[index+1])!
    print(sleep, wake)
}


aLog.forEach { print(2503, $0) }
//: [Next](@next)
