//
//  ViewModel.swift
//  PracticeSwiftApiApp
//
//  Created by Gopi Krishna on 11/09/18.
//  Copyright © 2018 Gopi Krishna. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import AVFoundation

final class UserViewModel {
    
    let moc: NSManagedObjectContext = {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }()
    lazy var networkManager: NetworkHandler = {
        let networkHandler = NetworkHandler.init()
        return networkHandler
    }()
    
    func login(with params:[String:Any],_ completion:@escaping () -> ()) {
        
        self.networkManager.requestToApi("usermobile/login", decode:LoginDetails.self, method:.POST, body:params) { (result,statusCode)  in
            switch result {
            case .success(let values) :
                if let userInfo = values {
                    defer {
                        print(userInfo)
                    }
                    do {
                        try self.saveToCore(userInfo)
                        print("Saved to CoreData")
                        completion()
                    }
                    catch {
                        print(error)
                    }
                }
            case .fail(let error):print(error)
            }
        }
    }
    
    func register(with params:[String:Any]) {
        
    }
    
    
    
}


internal extension UserViewModel {
   
    private func saveToCore(_ info:LoginDetails) throws {
        guard let fetchedInfo = try (moc.fetch(UserInfo.fetchRequest()) as? [UserInfo])?.first else {
            let sample = UserInfo(context: moc)
            try self.assembleData(info,sample)
            return
        }
        try self.assembleData(info, fetchedInfo)
    }
    
    private func assembleData(_ info:LoginDetails,_ managedObject:UserInfo) throws {
        if let customer = info.customer {
            managedObject.customer?.customerData = try customer.jsonData() as NSObject
        }
        var userData = info
        userData.customer = nil
        managedObject.userData = try userData.jsonData() as NSObject
        try moc.save()
    }
    
//    func fetchUserInfo() throws -> LoginDetails {
//        guard let fetchedInfo = try (moc.fetch(T.fetchRequest()) as? [T])?.first else {
//            throw NSError.init(domain: "userInfo", code: 1009, userInfo:nil)
//        }
//        defer {
//            print(fetchedInfo)
//        }
//        
//        return try LoginDetails.init(data:userData)
//    }
    
}
