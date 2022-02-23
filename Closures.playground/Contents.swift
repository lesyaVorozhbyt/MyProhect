import UIKit


// write methods
// Hi,
// Name.
// Welcome!

struct Order {
    var id: String
    var price: Float
    var address: String
    
    var orderCompleted: (Bool) -> Void
    
    func startOrder() {
        print("processing")
        print("almost finish")
        orderCompleted(Bool.random())
        print("finish")
    }
}

var order = Order(id: "12", price: 56, address: "trtry") { res in
    if res {
        print("Order succ completed")
    } else {
        print("Try again")
    }
}

var order2 = Order(id: "12", price: 56, address: "trtry", orderCompleted: result)

order.startOrder()


func result(_ res: Bool) {
    print("Order \(res) completed")
}

func sortOrders(orders: [Order], sortedComplition: (Order, Order) -> Bool) -> [Order]{
    print("______")
    var arr = orders
    for _ in 0..<arr.count {
        for j in 0..<arr.count - 1 {
            if sortedComplition(arr[j], arr[j+1]){
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
    print(arr)
    print("______")
    return arr
}

//var orders = [
//    Order(id: "1", price: 45, address: "asd"),
//    Order(id: "3", price: 445, address: "asd"),
//    Order(id: "2", price: 1, address: "asd")
//]
//
//let sortedItems = sortOrders(orders: orders) { lorder, rOrder in
//    print("______")
//    return lorder.price < rOrder.price
//}
//
//print(sortedItems)
//
//let sortedItems2 = sortOrders(orders: orders) { lorder, rOrder in
//    print("______")
//    return lorder.id < rOrder.id
//}
//
//print(sortedItems2)
//
//
//func sort(arr: [Int], equlityComplition: (Int, Int) -> Bool) -> [Int] {
//    var arr = arr
//    for _ in 0..<arr.count {
//        for j in 0..<arr.count - 1 {
//            if equlityComplition(arr[j], arr[j + 1]) {
//                let temp = arr[j]
//                arr[j] = arr[j + 1]
//                arr[j + 1] = temp
//            }
//        }
//    }
//    return arr
//}
//
//let arr = [4, 7, 9, 12]
//let sortedArray = sort(arr: arr, equlityComplition: { lparam, rParam in
//    print("\(lparam) \(rParam)")
//    return lparam < rParam
//})
//
//let sorted2Array = sort(arr: arr, equlityComplition: { lparam, rParam in
//    print("\(lparam) \(rParam)")
//    return lparam > rParam
//})
//
//print("\n\n\n")
//print(sortedArray)
//
//print("\n\n\n")
//print(sorted2Array)
//
//
//func test(testValue: Int, dataComptition: (Int) -> Void) {
//    var mTestValue = testValue * 2
//    dataComptition(mTestValue)
//
//    print("************")
//}
//
//
//test(testValue: 3) { res in
//    print(res)
//    print("zzzzzzz")
//}
//
//test(testValue: 3) { res in
//    print(res)
//    print("ddddddddddddddd")
//}
//
//test(testValue: 65, dataComptition: methods2)
//test(testValue: 65, dataComptition: methods3)
//test(testValue: 65, dataComptition: methods2)
//test(testValue: 65, dataComptition: methods3)
//
//func methods2(res: Int) {
//    print("00000")
//}
//
//func methods3(res: Int) {
//    print("00000")
//}
