//: Playground - noun: a place where people can play

import UIKit
import Darwin

var str = "Let's the challenge begin"

print(str)



// MARK: functions

func question(message: String, answer: Bool){
    print("Question ?\n",message, "?")
    print("Answer:",  answer)
    
}

func countBucket(buckets: Int) -> Int{
    var move = Int(arc4random_uniform(10))
    func moveBucket(buckets: Int) -> Int{
        move += buckets
        return move
    }
    question(message: "Will it be compiler error", answer: false)
    return moveBucket(buckets: buckets)
}

print(countBucket(buckets: 4))
