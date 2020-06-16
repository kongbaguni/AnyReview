//
//  UserInfoModel.swift
//  AnyReview
//
//  Created by Changyul Seo on 2020/06/16.
//  Copyright © 2020 Changyul Seo. All rights reserved.
//

import Foundation
import RealmSwift
class UserInfoModel: Object {
    @objc dynamic var name:String = ""
    @objc dynamic var email:String = ""
    @objc dynamic var introduce:String = ""
    @objc dynamic var profileImageURLgoogle:String = ""
    @objc dynamic var profileImageURLfirebase:String = ""
    @objc dynamic var updateTimeIntervalSince1970:Double = 0
    @objc dynamic var point:Int = 0
    @objc dynamic var exp:Int = 0
    
    
    override static func primaryKey() -> String? {
        return "email"
    }
    
    override static func indexedProperties() -> [String] {
        return ["name"]
    }
}
