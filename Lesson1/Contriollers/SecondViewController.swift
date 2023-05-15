//
//  SecondViewController.swift
//  Lesson1
//
//  Created by Gulzat on 15/5/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("name: \(name)")
        nameLabel.text = name
    }
    

}
