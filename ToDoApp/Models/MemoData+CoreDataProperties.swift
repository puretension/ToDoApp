//
//  MemoData+CoreDataProperties.swift
//  ToDoApp
//
//  Created by 이도형 on 2023/08/21.
//
//

import Foundation
import CoreData


extension MemoData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MemoData> {
        return NSFetchRequest<MemoData>(entityName: "MemoData")
    }

    @NSManaged public var color: Int64
    @NSManaged public var date: Date?
    @NSManaged public var memoText: String?
    
    var dateString: String? {
        let myFormatter = DateFormatter()
        myFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = self.date else { return "" }
        let savedDateString = myFormatter.string(from: date)
        return savedDateString
    }

}

extension MemoData : Identifiable {

}
