//
//  DetailVC.swift
//  ListOfSongs
//
//  Created by 1234 on 16.09.2023.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var image: UIImageView!
    
    var trackTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: trackTitle)
        titleLabel.text = trackTitle
        titleLabel.numberOfLines = 0
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 17)
    }
    
}
