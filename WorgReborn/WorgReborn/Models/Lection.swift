import Foundation
import RealmSwift

class Lection: Object {
    dynamic var lectionUID = NSUUID().uuidString
    let detail = List<LectionDetail>()
}
