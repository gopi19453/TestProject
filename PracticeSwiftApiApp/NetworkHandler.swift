//
//  NetworkHandler.swift
//  PracticeSwiftApiApp
//
//  Created by Gopi Krishna on 11/09/18.
//  Copyright © 2018 Gopi Krishna. All rights reserved.
//

import Foundation

enum Result<Value> {
    case success(Value),fail(Error)
}

enum HTTPMethod:String {
    case GET,POST,PUT,DELETE
}

class NetworkHandler: NSObject {
    
    //    private let hostUrl = "http://localhost:8080/app/user/"
    private let hostUrl = "http://189.202.249.251:8083/v1/"
    private let basicAuthorisation: String = {
        let userName = "ccmobile"
        let password = "4f6563b99eba7e4c087c6ec044a74000"
        let basicAuth = String.init(format: "%@:%@", userName,password)
        guard let base64String = basicAuth.data(using: .utf8)?.base64EncodedString()  else { return "" }
        return  "Basic \(base64String)"
    }()
    
    func requestToApi<T:Codable>(_ service:String,decode to:T.Type,method:HTTPMethod,body:Any?,_ completion:@escaping (Result<T?>,Int) -> ())  {
        guard let serviceUrl = URL.init(string: hostUrl + service) else {
            print("Invalid Url")
            return
        }
        var urlRequest = URLRequest.init(url: serviceUrl, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 60)
        urlRequest.setValue(basicAuthorisation, forHTTPHeaderField: "Authorization")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = method.rawValue
        if let body = body {
            
            urlRequest.encodeParameters(parameters: body as! [String:String])
            //            do {
            //                let encodedData = try JSONSerialization.data(withJSONObject: body, options: .prettyPrinted)
            //                urlRequest.httpBody = encodedData
            //            }
            //            catch {
            //                completion(Result.fail(error))
            //            }
        }
        
        URLSession.shared.dataTask(with: urlRequest) { (data,response, error) in
            //            if let error = error {
            //                completion(Result.fail(error),response)
            //                return
            //            }
            guard error == nil,let httpResponse = response as? HTTPURLResponse,(200..<300).contains(httpResponse.statusCode) else {
                print(HTTPURLResponse.localizedString(forStatusCode: (response as! HTTPURLResponse).statusCode))
                DispatchQueue.main.async {
                    
                    completion(Result.fail(error!),(response as! HTTPURLResponse).statusCode)
                    
                }
                return
            }
            print(HTTPURLResponse.localizedString(forStatusCode: httpResponse.statusCode))
            if let data = data {
                do {
                    if httpResponse.statusCode == 201 {
                        completion(Result.success(nil),httpResponse.statusCode)
                        return
                    }
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .millisecondsSince1970
                    let values = try decoder.decode(T.self, from: data)
                    DispatchQueue.main.async {
                        completion(Result.success(values),httpResponse.statusCode)
                    }
                }
                catch {
                    DispatchQueue.main.async {
                        
                        completion(Result.fail(error),httpResponse.statusCode)
                    }
                }
            }
            }.resume()
    }
}

internal extension URLRequest {
    /// Percent escape
    ///
    /// Percent escape in conformance with W3C HTML spec:
    ///
    /// See http://www.w3.org/TR/html5/forms.html#application/x-www-form-urlencoded-encoding-algorithm
    ///
    /// - parameter string:   The string to be percent escaped.
    /// - returns:            Returns percent-escaped string.
    
    private func percentEscapeString(string: String) -> String {
        
        var characterSet = CharacterSet.alphanumerics
        characterSet.insert(charactersIn: "-._* ")
        return (string.addingPercentEncoding(withAllowedCharacters: characterSet)?.replacingOccurrences(of: " ", with: "+")) ?? ""
    }
    
    /// Encode the parameters for `application/x-www-form-urlencoded` request
    ///
    /// - parameter parameters:   A dictionary of string values to be encoded in POST request
    
    mutating func encodeParameters(parameters: [String : String]) {
        httpMethod = "POST"
        
        let parameterArray = parameters.map { (arg) -> String in
            let (key, value) = arg
            return "\(key)=\(self.percentEscapeString(string: value))"
        }
        httpBody = parameterArray.joined(separator: "&").data(using: .utf8)
    }
}
