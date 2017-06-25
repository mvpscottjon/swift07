//
//  myfunc2.swift
//  sevenS07
//
//  Created by user on 2017/6/13.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation


func  myfunc2() {
    
    func f1() -> () -> () {
        func f2() {
            print("f2")
        }
        return f2  //by value
    }
    
    print(type(of:f1))

    
    
   
    
    
    // f4 = f1  => ()->()->()
    let f4 = f1
    print(type(of:f4))

    //f4的return值 => ()->()
    let f3 = f4()
    print(type(of:f3))
    //f3()才能執行
    f3()
    
    
    
    

    func f5(myfunc: ()->()){
        myfunc()
        print("f5")
    }
    
    
    
    let f6 = f5   //只給定義部分 {  裡面的東西}
    
  
    
    print("=======")

    
    

    func f7() {print("f7")}
    
    
    
    //f5 要這樣執行
    f5(myfunc: f7)
    
    //f6要這樣執行
    f6(f7)

    f6() {
        print("tail")
    }

    
}
    

func ten(){

//    func f10(){
//        print("f10")
//        
//    }
    
    func f10(a:Int){    //overload  函數名稱一樣  傳入參數不一樣
        print(a)
    }
    
   
//不能跟f10() 無傳參數共存，會認不出來
//    func f10() -> Int {   //傳回值不同
//        return 1
//    }
//    
//    
//   var a = f10()
//    print(a)
    
    
    
    func f10() -> Bool {   //傳回值不同
        return true
    }
    
    
    func f10(a:Int, b:Bool) {   //傳回值不同
        
    }

    
    f10(a:3)
  var b =  f10(a:4, b:false)
   print(b)
    
//
//    
    func f11() {
        
        print("f3")
    }
    
    //by???
    func f11(by:(Int,Int) -> Bool){
        print("f3:bool")
    }

    f11()
    
///???? 指的是在什麼時候媽？？？？
    f11(by: {(a,b) -> Bool in a < b})
////?????  建構式再增加東西媽？？
    f11(){(a,b) ->Bool in
        print("ok")
        return a < b
    }

    print("----")
    
    
    
/////*******身分證字號產生器  待做
////    func createTWId() ->String {
////        return createTWId(gender: false)
////    }
////    func createTWId(gender:Bool) ->String {
////        return createTWId(gender: gender, area: 4)
////    }
////    func createTWId(area:Int) ->String {
////        return createTWId(gender: true, area: area)
////    }
////    func createTWId(gender:Bool, area:Int) ->String {
////        return ""
////    }
//    
    
    
}
