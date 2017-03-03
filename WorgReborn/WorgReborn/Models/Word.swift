import Foundation
import RealmSwift


class Word: Object {
    dynamic var wordId = NSUUID().uuidString
    dynamic var fWord = ""
    dynamic var hWord = ""
    dynamic var fSound = ""
    dynamic var hSound = ""
    dynamic var type = 1

    override class func primaryKey() -> String? {
        return "wordId"
    }

    convenience init(fWord: String, fSound: String) {
        self.init()
        self.fWord = fWord
        self.fSound = fSound
    }
}
