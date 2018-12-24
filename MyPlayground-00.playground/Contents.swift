import UIKit

var str = "Hello, playground - 基础内容"

/*
 在你的代码中，如果存储的值不会改变，请用 let 关键字将之声明为一个常量。只有储存会改变的值时才使用变量。
 */

// 使用关键字 let 来声明常量
let notExchange = 10

// 使用关键字 var 来声明变量
var exchange = 10

// 在一行中声明多个变量或常量，用逗号分隔
var x = 0.0, y = 0.0, z = 0.0

/*
 实际上，你并不需要经常使用类型标注。如果你在定义一个常量或者变量的时候就给他设定一个初始值，那么 Swift 就像类型安全和类型推断中描述的那样，几乎都可以推断出这个常量或变量的类型。在上面 welcomeMessage 的栗子中，没有提供初始值，所以 welcomeMessage 这个变量使用了类型标注来明确它的类型而不是通过初始值的类型推断出来的。
 */
//var welcomeMessage :String
//welcomeMessage = 10
//welcomeMessage = "声明一个变量或常量的时候提供类型标注，来明确变量或常量能够储存值的类型"

// 在一行中定义多个相关的变量为相同的类型，用逗号分隔，只要在最后的变量名字后边加上类型标注
//var red, green, blue :Double

var talk = "你瞅啥"
talk = "瞅你咋滴"

let str1 = "将常量或变量名放入圆括号中并在括号前使用反斜杠将其转义："

print(str1)
print("Swift 使用字符串插值 的方式来把常量名或者变量名当做占位符加入到更长的字符串中，然后让 Swift 用常量或变量的当前值替换这些占位符。 \(str1)")

// 这是一个注释

/* this is also a comment,
 but written over multiple lines */

/* 这是第一个多行注释的开头
 /* 这是第二个嵌套在内的注释块 */
 这是第一个注释块的结尾*/

let cat = "猫"; print(cat)

let minValue = UInt8.min // 最小值是 0, 值的类型是 UInt8
let maxValue = UInt8.max // 最大值是 255, 值得类型是 UInt8

/*
除非你需操作特定长度的整数，否则请尽量在代码中使用 Int 作为你的整数的值类型。这样能提高代码的统一性和兼容性，即使在 32 位的平台上， Int 也可以存 -2,147,483,648 到 2,147,483,647 之间的任意值，对于大多数整数区间来说完全够用了。

Swift 也提供了一种无符号的整数类型， UInt ，它和当前平台的原生字长度相同。
*/

//Double代表 64 位的浮点数。
//Float 代表 32 位的浮点数。

//Double 有至少 15 位数字的精度，而 Float 的精度只有 6 位。具体使用哪种浮点类型取决于你代码需要处理的值范围。在两种类型都可以的情况下，推荐使用 Double 类型。

//一个十进制数，没有前缀
//一个二进制数，前缀是 0b
//一个八进制数，前缀是 0o
//一个十六进制数，前缀是 0x

let decimalInteger = 17
let binaryInteger = 0b10001 // 17 in binary notation
let octalInteger = 0o21 // 17 in octal notation
let hexadecimalInteger = 0x11 // 17 in hexadecimal notation

let three = 3
let number = 0.1415926
let pi = Double(three) + number

//类型别名可以为已经存在的类型定义了一个新的可选名字。用 typealias 关键字定义类型别名。
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max

let isShow = true
let hasSize = false

// 元组
let httpError = (404, "Not Found")

let (statusCode, statusMessage) = httpError

let (justTheStatusCode, _) = httpError
print("the status code is \(justTheStatusCode)")

print("the status code is \(httpError.0)")
print("the status message is \(httpError.1)")

let http200Status = (statusCode:200, description:"OK")

print("the status code is \(http200Status.statusCode)")
print("the status message is \(http200Status.description)")

// 可选项
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

//你可以通过给可选变量赋值一个 nil 来将之设置为没有值：
var severResponseCaode: Int? = 404
severResponseCaode = nil

//你可以通过给可选变量赋值一个 nil 来将之设置为没有值：
var surveyAnswer : String?

//Swift 中的 nil 和Objective-C 中的 nil 不同，在 Objective-C 中 nil 是一个指向不存在对象的指针。在 Swift中， nil 不是指针，他是值缺失的一种特殊类型，任何类型的可选项都可以设置成 nil 而不仅仅是对象类型。

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

// 一旦你确定可选中包含值，你可以在可选的名字后面加一个感叹号 （ ! ） 来获取值，感叹号的意思就是说“我知道这个可选项里边有值，展开吧。”这就是所谓的可选值的强制展开。

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

//如果  Int(possibleNumber)  返回的可选 Int 包含一个值，将这个可选项中的值赋予一个叫做 actualNumber 的新常量。
if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' could not be converted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
     print("\(firstNumber) < \(secondNumber) < 100")
}


let possibleString: String? = "an optional string."
let forcedString: String = possibleString!

let assumedString: String! = "an implicitly unwrapped optional string."
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString)
}

if let definiteString = assumedString {
    print(definiteString)
}

func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}













