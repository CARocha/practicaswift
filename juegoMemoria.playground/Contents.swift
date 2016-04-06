//: Playground - noun: a place where people can play
//: Elaborado por: Carlos Rocha

import UIKit

var RangosNumeros = 0...100

for obj in RangosNumeros{
    if obj % 5 == 0 {
        print("el # \(obj) Bingo!!!")
    }
    if obj % 2 == 0 {
        print("el # \(obj) par!!!")
    }else{
        print("el # \(obj) impar!!")
    }
    for x in 30...40{
        if obj == x{
            print("el # \(obj) Viva Swift!!")
        }
    }
    

}
