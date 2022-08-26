/*:
## Exercise - Constants

 Declare a constant called `friends` to represent the number of friends you have on social media. Give it a value between 50 and 1000. Print out the value by referencing your constant.
 */
let friends = 76
print(friends)

//:  Now assume you go through and remove friends that aren't active on social media. Attempt to update your `friends` constant to a lower number than it currently is. Observe what happens and then move to the next step.
//friends = 65
//print(friends)

//:  Does the above code compile? Why not? Print your explanation to the console using the `print` function. Go back and delete your line of code that updates the `friends` constant to a lower number so that the playground will compile properly.
print("The code doesn't compile because friends was declared to be a constant, hence when we tried to change the value of friends it throws the error: note: change 'let' to 'var' to make it mutable")

/*:
page 1 of 10  |  [Next: App Exercise - Step Goal](@next)
 */
