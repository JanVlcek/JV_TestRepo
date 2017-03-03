//
//  FirstViewController.swift
//  WorgReborn
//
//  Created by Jan Vlcek on 2/16/17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit
import RealmSwift

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let realm = try! Realm()
        let word = Word(fWord: "test", fSound: "test.mp3")
        try! realm.write {
            realm.add(word)
        }

        var words: Results<Word>!

        words = realm.objects(Word.self)

        let task = words[0].fWord

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

