import Foundation
import NeedleFoundation

protocol UserDataParseableProtocol {
    var data: String? { get set }
}

class UserDataClass: UserDataParseableProtocol {
    var data: String? = "Ana Maia"
}

struct UserDataStruct: UserDataParseableProtocol {
    var data: String?
}
