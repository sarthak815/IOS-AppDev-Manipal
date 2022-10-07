/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
 
var items: [Any] = [2, "Bike", 3.1, 3, false, false, 33, 2.1, "Kotlin"]
print(items)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 
for item in items {
    if let int = item as? Int {
        print("The Integer has a value of \(int)")
    } else if let dooble = item as? Double {
        print("The Double has a value of \(dooble)")
    } else if let str = item as? String {
        print("The String has a value of \(str)")
    } else if let bool = item as? Bool {
        print("The Boolean has a value of \(bool)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 
let dic: [String: Any] = ["Hello": 42, "Hi": false, "No": "YES", "WHY": 58.5, "OK": 2, "num": "2.5"]
print(dic)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 
var total: Double = 0

for item in dic {
    if let val = item.value as? Int {
        total += Double(val)
        //print(total)
    } else if let valdoble = item.value as? Double {
        total += valdoble
    } else if let str = item.value as? String { // is
        total += 1
    } else if let trueBool = item.value as? Bool {
        if trueBool  {
            total += 2
        } else {
            total -= 3
        }
    }
        
}

print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 var total2: Double = 0

for item in dic {
    if let val = item.value as? Int {
        total2 += Double(val)
        //print(total)
    } else if let valdoble = item.value as? Double {
        total2 += valdoble
    } else if let str = item.value as? String {
       
        if let sum = Double(str) {
            total2 += sum
        }
        
    }
}


/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */