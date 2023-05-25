//
//  ContactTableViewCell.swift
//  Lesson1
//
//  Created by Gulzat on 22/5/23.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var contactLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(goodName: String, goodImage: String, count: Int) {
        contactImage.image = UIImage(named: goodImage)
        contactLabel.text = "\(count)" //goodName
        
    }
    
}
