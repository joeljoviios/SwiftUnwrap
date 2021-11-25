import UIKit
//MARK: Sample Types
//Varaibles
///Assigned Value can be changed at any point of time
var greeting = "Hello, playground"
greeting = "Another playground"
//Constants
///Assigned Value cannot be changed once Set.
let const = "hello I'm Constant and i can not change"

//MARK: Data Types
let life = Bool()
let age = Int()
var myAge : Int = 20
let grade : Float

print(myAge)
print(age)

//MARK: Basic Function
///Functions are basically used for re-usabiltiy, Scalability.
func sayHello () {
    print("Hello I'm basic Function")
}
sayHello()

//MARK: Function with Parameters
///function with parameters are the functions which accepts arguments with same/Different Datatype.
func sayHelloTo(name: String) {
    print("Hello \(name), I'm a funciton with Parameters")
}
sayHelloTo(name: "Joel")
sayHelloTo(name: "Jona")

//MARK: Function with multiple Parameters with different data types
func sayHelloToJona(name: String , age: Int, isAlive: Bool, Percentage: Float) {
    print("Hello \(name), My age is \(age), I'm \(isAlive), and my percentage is \(Percentage)")
}
sayHelloToJona(name: "Jona", age: 22, isAlive: true, Percentage: 99.9)

//MARK: Ommiting the argument label
func sayHelloToJona(_ name: String , _ age: Int, _ isAlive: Bool, _ Percentage: Float) {
    print("Hello \(name), My age is \(age), I'm \(isAlive), and my percentage is \(Percentage)")
}
sayHelloToJona("Jona", 20, true, 99.8)

//MARK: Function with return type
func addNumberTo(x: Int) -> Int {
   let sum = x + 10
    return sum
}
addNumberTo(x: 5)

//NOTE : variables/Constants declared inside the function are accessible only within the function itself

class myRobot {
    var robotName = "Jona"
    
    func walk() {
        print("I'm \(robotName) and I'm walking")
    }
    
    func run() {
        print("I'm \(robotName) and I'm running")
    }
}

var robotObject = myRobot()
robotObject.robotName = "JoelJona"
robotObject.run()
robotObject.walk()

//MARK: INOUT Parameter function
//All the parameters in a swift function by default are constants. so If we want to change the values of that parameters we will have to make use of INOUT. The changes that are done will reflect to the original vlaue outside the funtion.

var x = 10
func makeDouble(num: inout Int) {
    num *= 2
}
makeDouble(num: &x)
print(x)

var myName = ""
func nameChange(str: inout String) {
    str = "JO"
}
nameChange(str: &myName)

//MARK: class and Struct Difference
/* Class is a reference type where as Struct is a value type
 Ref type : A reference will be created and doesn't copy the data. So when we change one instance other instances will also get changed
 Value Type: A unique copy will be created and the data doesn't change
 EX: Me you Manager and Phone Number
 In Ref: I gave my Number to you written on a piece of paper, You shared it with your manager and Your manager doesn't make a note of it, But instead when he requires my no he'll contact you and when you change the digit in my number, My data is also changed.
 In Value : Same scenario but now the manager will make a note of Number, so  a seperate copy of it is created. Now unique copy is there and Number  change in one place doesn't  change the value in another place.
 */
// Struct Def and Declaration
struct myStruct {
    var name: String = ""
    var gender: String = ""
    var age: Int = 20
}
var myStructObj = myStruct()
myStructObj.age = age
myStructObj.name = "Jona"
myStructObj.gender = "F"
print(myStructObj.name)

//Class
class someClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var aClass = someClass(name: "Jona")
var bClass = aClass
bClass.name = "Joel"


print(aClass)
print(bClass)

//Struct
struct someStruct {
    var name = "Joel"
}

var aStruct = someStruct(name: "Jona")
var bStruct = aStruct
bStruct.name = "Joel"

print(aStruct)
print(bStruct)

//MARK: Generics
/*
 Works with all the return types and helps in reducing redundant code.
 */

func addInts(x: Int, y: Int) -> Int {
    return x+y
}

let sums = addInts(x: 1, y: 2)
print(sums)


//MARK: Lazy Loading
func printGreeting(to: String) -> String {
    print("In printGreeting()")
    return "Hello, \(to)"
}

func lazyTest() {
    print("Before lazy")
        var greeting = printGreeting(to: "Paul")
    print("After lazy")
    print(greeting)
}

lazyTest()

//MARK: SWIFT TOUR
let myBrothers: Float = 4

//values are never implicitly converted to another type
let label = "the width is "
let width = 60
let widthLabel = label + String(width)

let joelGreeting = "Hi Joel"
let joelAge = 26.0
let tempNumber = 0.0
print("\(joelGreeting), and my age on total is \(joelAge + tempNumber)")

// Use """ for strings that take up multiple lines
    let quatation = """
    I said "My age is \(joelAge). "
    And then I said "My age is \(joelAge + tempNumber)" on total."
    """

//MARK: Arrays and Dictionaries
//Create an empty Array and Dictionary using Initializer Syntax
var emptyArray = [String]()
var emptyDictionary = [String: String]()

//If type information can be inferred, we can create an empty array and dict
shoppingList = []
occupations = [:]

//Array
var shoppingList = ["catfish","water","tulips"]
shoppingList[1] = "bottle of water"

//Dictionary
var occupations = ["Joel": "Developer", "Jona":"Executive","Daddy":"Foreman"]
occupations["Daddy"] = "Farmer"

//MARK: Control Flow
/*
 Use if and switch to make conditionals, and user for-in , while, and repeat-whilt to make loops, Parentheses around the condition or loop variable are optional. Braces around the body are required.
 */

let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

//MARK:-  Optionals
var optionalString: String = "Hello"
print(optionalString == nil)
var optionalName: String? = "Jona Jovi"
print(optionalName == nil)
var greets = "Hello"
if let name = optionalName {
    greets = "Hello, \(name)"
} else {
    greets = "Bye, \(optionalName)"
}

/*
 If the optional value is nil, the conditional is false and the code in braces is skipped. Otherwise, the optional value is unwrapped and assigned to the constant after let, which makes the unwrapped value available inside the block of code
 
 Another way to handle optional values is to provide a default value using the ?? operator. If the optional vlaue is missing, the default value is used instead.
 */

let nickName: String? = nil
let fullName: String = "Joel Jona"
let informalGreetings = "Hey \(nickName ?? fullName)"


//MARK: Default Values for Dictionary
// When we try to access for a value which doesn't exist xcode return nil. So instead of showing nil we can provide a default value to the user
let names = ["Joel":"Male","Jona":"Female"]
names["Joel"]

//When we try to access value which doesn't exist will see nil
names["bharat"]

//providing default value
names["bharat", default: "unknown"]


//MARK: Empty Collection

//Array
var students = [String]()
var moreStudents = ["bharat"]
var studentAge = [Int]()

students.append("Joel")
students.insert("Jona", at: 1)
students.append(contentsOf: moreStudents)
print(students)
//Dictionary
var teachers = [String: String]()
//set
var principal = Set<String>()
var numbers = Set<Int>()

//Enumerations
enum result {
    case pass
    case fail
}
result.fail

// Enum Raw Values

enum planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = planet(rawValue: 1)

enum Planet: Int {
    case mercury = 1
    case earth
    case mars
    case satun
}

//MARK:- Operators and conditions, ARITHMETIC OPERATORS
let firstScore = 10
let secondScore = 5

let total = firstScore + secondScore
let difference = total - firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % 4

//MARK:- Operator Overloading
// TYPE_SAFE:- Swift is a type-safe language. which means it won't let you mix types. For Example. You can't add an integer to an string because it doesn't make any sense

let fakers = "Faker gonna"
let fake = fakers + "Fake"

let firstHalf = ["Joel" , "JOvi"]
let secondHalf = ["Jona","Rachel"]
let complete = firstHalf + secondHalf

//MARK:- Compound Assignment Operators
var score = 95
score += 5

var quote = "A moment of pain is worth a lifetime of "
quote += "glory"

//MARK:- Comparision Operators
// == != < > <= >=

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore > secondScore

firstScore <= secondScore
firstScore >= secondScore

"Joel" <= "Jona"

//MARK:- Conditions
// if, if else

let firstCard = 11
let secondCard = 10

//if
if firstCard + secondCard == 21 {
    print("BlackJack")
}

// if else
if firstCard + secondCard == 21 {
    print("BlackJack")
} else {
    print("Regular Cards")
}

//else if

if firstCard + secondCard == 2 {
    print("lucky ace")
} else if firstCard + secondCard == 3 {
    print("Jack")
} else {
    print("HeartJack!!!")
}

//MARK:- Combining Conditions
// && ||

let age1 = 23
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("both \(age1) and \(age2) are greater than 18")
}

// or operator ||
if age1 > 18 || age2 > 18 {
    print("at least one is over 22")
}

//MARK:- TERNARY OPERATOR
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
// Note: Although some coders love using the ternary operator, it's best to avoid it because it doesn't make your code very clear

let isRecylable = false
print(isRecylable == true ? "success" : "failure")

var averagePages: Double = 10.01
print(averagePages == 10 ? "success" : "failure")

let storageMagnets = true
print(storageMagnets ? "success" : "failure")

//MARK:- SWITCH STATEMENTS
let weather = "sunny"

switch weather {
case "rain":
    print("bring an umbrella")
case "snow":
    print("wear thermals")
case "sunny":
    print("chill macha")
default:
    print("this will be executed if none of the case matches")
}
//Note: Fallthrough: Swift will only run the code inside each  case. if you want execution to continue on to the next case, use the "fallthrough" Keyword like below. We can use fallthrough multiple times
switch weather {
case "rain":
    print("bring an umbrella")
case "snow":
    print("wear thermals")
case "sunny":
    print("chill macha")
    fallthrough
default:
    print("this will be executed if none of the case matches")
}

//RANGE OPERATORS
// We've 2types of range operators Half-open range operator ..< and closed range operator ...   ..< creates range upto but excludes the final value, and  ... creates ranges up to and including the final value

let scores = 80
switch scores {
case 0..<50:
    print("You failed badly")
case 50..<80:
    print("you passed")
default:
    print("You did great")
}
//Note: Default case must be there to ensure all possible values are covered.
//Note: Swift has operators for doing arithmetic and for comparison; they mostly work like you already know. There are compund variants of arithmetic operators that modify their variables in place: +=, -=, and so on. You can use if, else, and else if to run code based on the result of a condition. Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn't recommend using it yourself. If you have multiple conditions using the same value, its often clearere touse Switch instead. You can make ranges using ..< and ... depending on whether the last number should be excluded or included.

var avera = 10.0
avera += 1.1

//MARK:- LOOPS
//FOR LOOP
let count = 1...10

for number in count {
    print("Number is \(number)")
}
let albums = ["Red","1993","Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna")
for _ in 0..<1{
    print("play")
}

//WHILE LOOP
var ranking = 1
while ranking <= 3 {
    print(ranking)
    ranking += 1
}
print("Ready or not, Here I come..!")

var digit: Int = 10
while digit > 0 {
    digit -= 2
    if digit % 2 == 0 {
        print("\(digit) is an even number")
    }
}

var speed = 50
while speed <= 55 {
    print("accelerating to \(speed)")
    speed += 1
}

//MARK:- REPEAT LOOPS
//It's identical to a while loop except the condition to check comes at the end.
var number = 1
repeat {
print(number)
    number += 1
}while number <= 3
print("Ready or not, here I come!")

//Because the condition comes at the end of the repeat loop the code inside the loop will always be executed at least once, whereas while loops check their condition before their first run . For example this print() function will never be run, because false is always false

while false {
    print("This is false")
}

//Xcode will even warn us that the print()line will never be executed. On the other hand, this print() function will be run once, because repeat only fails the condition after the loop runs.

repeat {
    print("this is false")
} while false


//MARK:- WRITING FUNCTIONS
//Functions let us re-use code. which means we can write a function to do something interesting then run that function from lots of places. Repeating code is generally a bad idea. and functions help us avoid doing that. To start with, we're going to write a function that prints help information for users of our app. We might need this anywhere inour app. so having it ias a function is a good idea. Swift functions start whti the func keyword, then your function name, then opena dnclose parentheses. All the body of you funtion - the code that shoyld be run when the function is requested is place inside braces.

func printHelp() {
    let message = """
        Welcome to myAPP!
        Run this app inside a directory of images and
        MyAPP will resize them all into thumbnails
        """
    print(message)
}
printHelp()

//MARK:- ACCEPTING PARAMETERS
//functions become more poweful when they can be customized each time you run them. Swift lets you send values to a function that can then be used insdie the function to change the way it behavves. We've used this already - we've been sending string sand integers to the print() function like below
print("Hello, world!")

//vlaues sent into functions this way are called parameters. To make your own functions accept parameters, give each parameter a name, then a colon, them tell swift the type of data it must be. All this goes inside the parenteses after your function name. For example, we can write a function to print the square of any number

func square(number: Int){
    print( number * number)
}

//calling function
square(number: 8)

//MARK:- RETURNING VALUES
//As well as receiving data, functions can also send back data. to do this. Write a dash thena righ angle bracket after you function's parameter list. then tell swift what kind of data will be returned. Inside you function. you use the return keyword to send a value back if you have one. Your function then immedaiately exits. sending back that vlaue - no other code from that function will be run. we could rewrite our suware() function to return a value rather than print it directly

func squared(number: Int) -> Int {
    return number * number
}
let squaredResult = squared(number: 8)
print(squaredResult)
// if you need to return multiple values, this is a perfect example of when to use tuples

//MARK:- PARAMETER LABELS
//Swift lets us provide two names for each parameter: one to be used expernally when calling the function, and one to be used internally inside the function. this is as simple as writing two names, seperated by a spcae.
 
func sayHelloo(to name: String) {
    print("Hello \(name)")
}
sayHelloo(to: "Jona")

//MARK:- OMITTING PARAMETER LABELS
//you migh have notice that we don't actually send any parameter names when we call print() - we say print("Hello") rather than print(message: "Hello"). YO can get this same behaviour in your own functions by using an underscore, _ for your external parameter name like below

func greet(_ person: String){
    print("Hello \(person)!")
}
greet("Jona")

//MARK:- DEFAULT PARAMETERS
//The print() function prints something to the screen, but always adds a new line to the end of whatever you prointed. so that multiple calls to proint() don't all appear on the same line. You can change that behaviour if you want. so you could use spaces rather than line breaks. Most of the line, though, folks want new lines. so print() has a terminator parameter that uses new line as its default value. you can give you r own parameters a default value just by writing an = after its type followed by the default you want to five it. So we could write a greet() function that can optionally print nice greetings:

func greeto(_ name: String, nicely: Bool = true){
    if nicely == false {
        print("Hello \(name)")
    } else {
        print("oh no it's \(name) again..!")
    }
}
greeto("Jona")
//greeto("Jona", nicely: true)

//MARK:- VARIADIC FUNCTIONS
//Some functions are variadic, which is a fancy way of saying they accept any nubmer of parameters of the same type. the Print() function is actually variadic if you pass lots of parameters they are all printed on one line with space between them
print("Haters","gonna","hate")
//you can make any parameter variadic by writing ... after its type. so an Int parameter is a single interer, whereas Int... is zero or more integers potentially hunders. Inside the function. Swift converts the vlaues that were passed in to an array of integers, so you can loop over them as needed. To try this out. let's write a square() functions that can square many numbers

func squareMultiNumbers(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squareMultiNumbers(numbers: 1,2,3,4,5)

//MARK:- WRITING THROWING FUNCTIONS
//Sometimes functions fail because they have bad input, or because something went wrong internally. Swift lets us throw errors from functions by making them as throws before their return type, then using the throw keyword when something goes wrong. First we need to define an enum that describes the errors we can throw. these must always be based on swift's existing Error type. We're going to write a function that checks wheteher a password is good. so we'll throw an error if the user tries an obvious password:

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String)
throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

//MARK:- RUNNING THROWING FUNCTIONS
//Swift doesn't like errors to happen when your program runs, which means it won't let yo urun an error-throwing function by accident. Instead. You need to call these functions using three new keywords: do try and catch. do starts a section of code that might cause problems, try is used before every function that might throw an erros, and catch lets you handle errors gracefully. If any errors are thrown inside the do block. execution immediately jumps to the catch block. Let's try calling checkPassword() with a parameter that throws an error.


do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//You can have multiple catch blocks to handle individual errors if you want, but you do need to catch all possible errors at some point otherwise your code won't build. OK

//MARK:- INOUT PARAMETERS
//All Parameters passed into a swift functin are constants, so you can't change them. If you want you can pass in one or more parameters as inout. which means they can be changes inside your function. and those changes reflect in the original value outside the function. For ex: if you want to double a number in place i.e change the value directly rather than returning a new one - you might write a function like below

func doubleInPlace(number: inout Int) {
    number *= 2
}
//to User that, you first need to make a variable integer- you can't use constant integers with inout, because they might be changed. you also need to pass the parameter to doubleInPlace using an ampersand &. before its name, which is an explicit recognition that you're aware it is being used as inout

var myNum = 10
doubleInPlace(number: &myNum)

//MARK:- CLOSURES
//// CompletionHandler are closures which is called inside the function, that closures are usually called after some task is complete.
//Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable. call that function using that variable. and even pass that function into other functions as parameters. Functions used in this way are called CLOSURES. and although they work like functions they are written a little differently.

let driving = {
    print("I'm driving my car")
}
// This Effectively creates a function without a function name and assigns that function to driving. We can now call driving() as if it were a regular function like below
driving()

//ACCEPTING PARAMETERS
// To make a closure accept parameters, list them inside parenteses just after the opening brace, then write "in" so that swift know the main body of the closure is starting.

let drivings = {(place: String) in
    print("I'm going to \(place) in my car")
}
drivings("London")

//Note: One of the differences between functions and closures is that you don't use parameters labels when running closures. So, to call driving() now we'd use like below
drivings("India")

//RETURNING VALUES
//Closures can also return values and they are writeen similarly to parameters:

let drivingWithReturn = {(place: String) -> String in
    return "I'm returning to \(place) in my car"
}
//calling
drivingWithReturn("London")
let message = drivingWithReturn("London")
print(message)

//Ex
let measureSize = { (inches: Int) -> String in
    switch inches {
    case 0...26:
        return "XS"
    case 27...30:
        return "S"
    case 31...36:
        return "M"
    default:
        return "XL"
    }
}
measureSize(36)

//CLOSURES AS PARAMETERS
//Because closures can be used just like strings and integers, you can pass them into functions.

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived")
}
travel(action: driving)
// Ex
let helicopterTravel = { print("Get to the chopper!")
}
func travel(by travelMeans: () -> Void) {
    print("Lets go to vacation..")
    travelMeans()
}
travel(by: helicopterTravel)

//TRAILING CLOSURE SYNTAX
//If the last parameter to a function is a closure, swift lets you use special syntax called trailing closure syntax. Rather than pass in your closure as a parameter, you pass it directly after the function inside braces.

func travels(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived")
}

// Because it's last parameter is a closure. we can call travel() using trailing closure syntax like below
travels() {
    print("I'm getting ready to go")
}
//Infact, there aren't any other parameters, we can eliminate the parentheses entirely
travels {
    print("I'm getting ready to go")
}

//USING CLOSURES AS PARAMETERS WHEN THEY ACCEPT PARAMETERS
// A Closure you pass into a function can also accept its own parameters.

func crawl(action: (String) -> Void){
    print("I'm getting ready to crawl.")
    action("Home")
    print("I arrived")
}

crawl { (place: String) in
    print("I'm going to \(place) in my car")
}









