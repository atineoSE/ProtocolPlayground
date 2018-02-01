//: [< Default Implementation](@previous)

import Foundation

protocol Greeter {
    func sayHi()
}

extension Greeter {
    func sayHi() {  print("Hello, world!") }
    func askHowAreYou() { print("How are you?") }
}

class FrenchGreeter: Greeter {
    func sayHi() { print("Bonjour, le monde!") }
    func askHowAreYou() { print("Comment allez-vous?") }
}

let inference = FrenchGreeter()
inference.sayHi()
inference.askHowAreYou()

let declaredType: Greeter = FrenchGreeter()
declaredType.sayHi()
declaredType.askHowAreYou()

//: **atineoSE:** watch out when adding additional methods to a protocol extension
//: that are not in the protocol declaration because those methods may be not
//: resolved in the precedence you expect, for vars declared as conforming
//: to the protocol
