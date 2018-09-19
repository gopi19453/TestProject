//
//  Datahandler.swift
//  PracticeSwiftApiApp
//
//  Created by Gopi Krishna on 30/08/18.
//  Copyright © 2018 Gopi Krishna. All rights reserved.
//

import UIKit

//final class UserInfo:Codable {
//    var first_name:String!
//    var last_name:String!
//    var email_address:String!
//    var password:String!
//    var phone_number:String!
//    var email_activation_code:String!
//    var email_activation_expire_time:String?
//    var source_id:Int!
//    var created_at:String!
//    var is_active:Bool!
//}
//
//final class SourceModel:Codable {
//
//    var id:Int?
//    var source_id: Int
//    var name:String
//
//    init(sourceID:Int,name:String) {
//        self.source_id = sourceID
//        self.name = name
//    }
//}

struct LoginDetails: Codable {
    let email: String
    let password: String?
    var name: String
    var lastName: String
    let token: String
    var lang: String
    var status: String
    let source: String
    var certificate: String?
    let facebookID: String?
    var customer: LoginCustomer?
    let registerDate: String
    
    enum CodingKeys: String, CodingKey {
        case email = "email"
        case password = "password"
        case name = "name"
        case lastName = "lastName"
        case token = "token"
        case lang = "lang"
        case status = "status"
        case source = "source"
        case certificate = "certificate"
        case facebookID = "facebookId"
        case customer = "customer"
        case registerDate = "registerDate"
    }
}

struct LoginCustomer: Codable {
    var id: Int
    let callCenter: LoginCallCenter
    let firstName: String
    let lastName: String
    let address: String
    let addressOptional: String?
    let country: LoginCountry
    let state:LoginState
    let city: String
    let postalCode: String
    let userName: String
    let email: String
    let phone1: String?
    let gender: String?
    let organization: Bool
    let date: String
    let updateDate: String?
    let featuresesLst: [JSONAny]
    let hotelLst: [JSONAny]
    let ageRange: LoginAgeRange
    let saleSet: [LoginSaleSet]
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case callCenter = "callCenter"
        case firstName = "firstName"
        case lastName = "lastName"
        case address = "address"
        case addressOptional = "addressOptional"
        case country = "country"
        case state = "state"
        case city = "city"
        case postalCode = "postalCode"
        case userName = "userName"
        case email = "email"
        case phone1 = "phone1"
        case gender = "gender"
        case organization = "organization"
        case date = "date"
        case updateDate = "updateDate"
        case featuresesLst = "featuresesLst"
        case hotelLst = "hotelLst"
        case ageRange = "ageRange"
        case saleSet = "saleSet"
    }
}

struct LoginAgeRange: Codable {
    let id: Int
    let from: Int
    let to: Int
    let status: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case from = "from"
        case to = "to"
        case status = "status"
    }
}

struct LoginCallCenter: Codable {
    
    let id: Int
    let name: String
    let program: LoginProgram
    let address: String
    let rfc: String
    let idSunset: String
    let invoice: JSONAny
    let active: JSONAny
    let paradise: Int
    let maxReservas: Int?
    let folio: JSONAny
    let contact1: String
    let email1: JSONNull?
    let phone: JSONNull?
    let hooked: JSONNull?
    let segment: LoginProgram?
    let oneway: JSONAny
    let merchant: String
    let language: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case program = "program"
        case address = "address"
        case rfc = "rfc"
        case idSunset = "idSunset"
        case invoice = "invoice"
        case active = "active"
        case paradise = "paradise"
        case maxReservas = "maxReservas"
        case folio = "folio"
        case contact1 = "contact1"
        case email1 = "email1"
        case phone = "phone"
        case hooked = "hooked"
        case segment = "segment"
        case oneway = "oneway"
        case merchant = "merchant"
        case language = "language"
    }
}

struct LoginProgram: Codable {
    let id: Int
    let program: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case program = "program"
    }
}

struct LoginCountry: Codable {
    
    let code: String
    let name: String
    let nameEsp: String
    let phoneCode: Int?
    let phoneMask: String?
    let mobileMask: String?
    
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case name = "name"
        case nameEsp = "name_esp"
        case phoneCode = "phoneCode"
        case phoneMask = "phoneMask"
        case mobileMask = "mobileMask"
    }
}

struct LoginSaleSet: Codable {
    
    let id: Int
    let campaign: LoginCampaign
    let saleDate: String
    let updateDate: Double
    let consultant: String
    let verifier: String
    let numberOfPayments: JSONAny
    let user: String
    let status: String
    let statusName: String?
    let insertDate: String
    let idCallCenter: JSONAny
    let certificateNumber: String
    let regular: JSONAny
    let supervisor: String
    let activation: JSONAny?
    let survies: [JSONAny]?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case campaign = "campaign"
        case saleDate = "saleDate"
        case updateDate = "updateDate"
        case consultant = "consultant"
        case verifier = "verifier"
        case numberOfPayments = "numberOfPayments"
        case user = "user"
        case status = "status"
        case statusName = "statusName"
        case insertDate = "insertDate"
        case idCallCenter = "idCallCenter"
        case certificateNumber = "certificateNumber"
        case regular = "regular"
        case supervisor = "supervisor"
        case activation = "activation"
        case survies = "survies"
    }
}

struct LoginCampaign: Codable {
    
    let id: Int
    let name: String
    let cancuncard: JSONAny?
    let callCenter: LoginCallCenter
    let program: LoginProgram?
    let segment: LoginHook?
    let merchant: String
    let codigo: JSONNull?
    let expira: JSONAny
    let reservationGroup: LoginHook
    let country: LoginCountry
    let typeCertificate: JSONAny
    let typeFolio: JSONAny
    let offer: LoginOffer?
    let slug: String?
    let status: JSONAny
    let dateCreated: String?
    let dateUpdated: String
    let description: String
    let active: JSONAny
    let folioMin: JSONAny?
    let organization: Bool
    let certCustomer:LoginCampaigns?
    let groupCC: JSONNull?
    let image: JSONNull?
    let subject: JSONNull?
    let body: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case cancuncard = "cancuncard"
        case callCenter = "callCenter"
        case program = "program"
        case segment = "segment"
        case merchant = "merchant"
        case codigo = "codigo"
        case expira = "expira"
        case reservationGroup = "reservationGroup"
        case country = "country"
        case typeCertificate = "typeCertificate"
        case typeFolio = "typeFolio"
        case offer = "offer"
        case slug = "slug"
        case status = "status"
        case dateCreated = "dateCreated"
        case dateUpdated = "dateUpdated"
        case description = "description"
        case active = "active"
        case folioMin = "folioMin"
        case organization = "organization"
        case certCustomer = "certCustomer"
        case groupCC = "groupCC"
        case image = "image"
        case subject = "subject"
        case body = "body"
    }
}

struct LoginCampaigns:Codable {
    let campaigns:[LoginCampaign]?
}

struct LoginOffer: Codable {
    
    let id: Int
    let name: String
    let mealPlan: LoginMealPlan
    let price: JSONAny
    let activationFee: JSONAny
    let taxes: JSONAny
    let destinations: [LoginDestinationElement]
    let status: JSONAny
    let transportation: LoginHook
    let description: String
    let hook: LoginHook
    let nights: Int
    let translations: [LoginTranslation]
    let dateCreated: String
    let dateUpdated: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case mealPlan = "mealPlan"
        case price = "price"
        case activationFee = "activationFee"
        case taxes = "taxes"
        case destinations = "destinations"
        case status = "status"
        case transportation = "transportation"
        case description = "description"
        case hook = "hook"
        case nights = "nights"
        case translations = "translations"
        case dateCreated = "dateCreated"
        case dateUpdated = "dateUpdated"
    }
}

struct LoginDestinationElement: Codable {
    let offerDestinationID: LoginOfferDestinationID
    
    enum CodingKeys: String, CodingKey {
        case offerDestinationID = "offerDestinationId"
    }
}

struct LoginOfferDestinationID: Codable {
    let destination: LoginOfferDestinationIDDestination
    
    enum CodingKeys: String, CodingKey {
        case destination = "destination"
    }
}

struct LoginOfferDestinationIDDestination: Codable {
    
    
    
    let id: Int
    let name: String
    let description: JSONNull?
    let active: Bool
    let state: JSONNull?
    let country: LoginCountry
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
        case active = "active"
        case state = "state"
        case country = "country"
    }
}

struct LoginHook: Codable {
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }
}

struct LoginMealPlan: Codable {
    let id: Int
    let plan: String
    let clave: String
    let claveMin: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case plan = "plan"
        case clave = "clave"
        case claveMin = "clave_min"
    }
}

struct LoginTranslation: Codable {
    
    let language: LoginLanguage
    let websiteDescription: String?
    let websiteDetails: String?
    let websiteTerms: String?
    
    enum CodingKeys: String, CodingKey {
        case language = "language"
        case websiteDescription = "websiteDescription"
        case websiteDetails = "websiteDetails"
        case websiteTerms = "websiteTerms"
    }
}

struct LoginLanguage: Codable {
    
    let code: String
    let englishName: String
    let active: Bool
    let defaultLocale: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case englishName = "englishName"
        case active = "active"
        case defaultLocale = "defaultLocale"
    }
}

struct LoginState: Codable {
    
    let id: Int
    let code: String
    let name: String
    let nameEsp: String
    let country: LoginCountry
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case code = "code"
        case name = "name"
        case nameEsp = "name_esp"
        case country = "country"
    }
}

struct ServiceError:Decodable {
    let message,fails,fail,email,flag,error:String?
    func Message() -> String {
        if let message = message {
            return message
        }
        if let fails = fails {
            return fails
        }
        if let fail = fail {
            return fail
        }
        if let email = email {
            return email
        }
        if let flag = flag,flag == "True",let error = error {
            return error
        }
        if let error = error {
            return error
        }
        return ""
    }
    
}

// MARK: Convenience initializers
extension ServiceError {
    init(data: Data) throws {
        self = try JSONDecoder().decode(ServiceError.self, from: data)
    }
}
extension LoginDetails {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginDetails.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginCustomer {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginCustomer.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginAgeRange {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginAgeRange.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginCallCenter {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginCallCenter.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginProgram {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginProgram.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginCountry {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginCountry.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginSaleSet {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginSaleSet.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginCampaign {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginCampaign.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginOffer {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginOffer.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginDestinationElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginDestinationElement.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginOfferDestinationID {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginOfferDestinationID.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginOfferDestinationIDDestination {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginOfferDestinationIDDestination.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginHook {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginHook.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginMealPlan {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginMealPlan.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginTranslation {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginTranslation.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginLanguage {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginLanguage.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension LoginState {
    init(data: Data) throws {
        self = try JSONDecoder().decode(LoginState.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: Encode/decode helpers

class JSONNull: Codable {
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String
    
    required init?(intValue: Int) {
        return nil
    }
    
    required init?(stringValue: String) {
        key = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    public let value: Any
    
    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }
    
    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }
    
    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }
    
    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }
    
    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }
    
    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}








