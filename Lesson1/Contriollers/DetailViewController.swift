//
//  DetailViewController.swift
//  Lesson1
//
//  Created by Gulzat on 22/5/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var numberLabel: UILabel!
    var number: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = number
    }
}
