//
//  ViewController.swift
//  PracticeSwiftApiApp
//
//  Created by Gopi Krishna on 30/08/18.
//  Copyright © 2018 Gopi Krishna. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    lazy var userViewModel: UserViewModel = {
        let userViewModel = UserViewModel.init()
        return userViewModel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        self.userViewModel.login(with: ["email" : "gopikrishna1812@gmail.com","password" : "gopi@453"]) { [weak self] in
//            (self?.view.viewWithTag(100) as! UITextView).text = try! self?.userViewModel.fetchUserInfo(conf: <#T.Type#>).jsonString(encoding: .utf8)
//            print((try? self.userViewModel.fetchUserInfo()) ?? "No Info")
        }
        
//        let serviceObj = Datahandler.init()
//        serviceObj.requestToApi("usermobile/login", decode:LoginDetails.self, method:.POST, body: ["email" : "gopikrishna1812@gmail.com","password" : "gopi@453"]) { (result) in
//            switch result {
//            case .success(let values) : print(values)
//            case .fail(let error):print(error)
//            }
//        }
//        serviceObj.requestToApi("login", decode: UserInfo.self, method:HTTPMethod.POST, body: ["email" : "banuharsha@gmail.com","password" : "Sample1234#"]) { (result) in
//            switch result {
//            case .success(let values) :
//                dump(values)
//            case .fail(let error):print(error)
//            }
//        }
//
//        serviceObj.requestToApi("register", decode: UserInfo.self, method:HTTPMethod.POST, body: ["email" : "banuharsha@gmail.com","password" : "Sample1234#"]) { (result) in
//            switch result {
//            case .success(let values) :
//                dump(values)
//            case .fail(let error):print(error)
//            }
//        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

