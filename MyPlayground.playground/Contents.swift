//: Playground - noun: a place where people can play

//import UIKit
//
//let currentDate = NSDate()
//print(currentDate)
//
//let calendar = NSCalendar.currentCalendar()
//
//let startDay = calendar.dateByAddingUnit(.Day, value: -1, toDate: currentDate, options: [])
//
//print(startDay!)
//
//print(Int(startDay!.timeIntervalSinceNow))
//
//if startDay!.compare(currentDate) == NSComparisonResult.OrderedDescending
//{
//    print("date1 after date2");
//} else if startDay!.compare(currentDate) == NSComparisonResult.OrderedAscending
//{
//    print("date1 before date2");
//} else
//{
//    print("dates are equal");
//}
//
//let newDateString = "2016-08-18 00:00:01.000000 UTC"
//
////let newDate = NSDate(timeInterval: 10.0, sinceDate: startDay!)
//
//let dateFormatter = NSDateFormatter()
//dateFormatter.timeZone = NSTimeZone(name: "UTC")
//dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.S Z"
//
//var date = dateFormatter.dateFromString(newDateString)
//print(date!)
//

let dateString = "2016-08-18 18:08:00 +0000"

let intIndex = dateString.startIndex...dateString.startIndex.advancedBy(18)

var text = dateString[intIndex]
text = text + ".000000 UTC"
print(text)






