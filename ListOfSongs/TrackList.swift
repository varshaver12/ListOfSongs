//
//  TrackList.swift
//  ListOfSongs
//
//  Created by 1234 on 16.09.2023.
//

import UIKit

class TrackList: UITableViewController {
    
    let imageNameArray = [ "Alberto Ruiz - 7 Elements (Original Mix)",
                           "Dave Wincent - Red Eye (Original Mix)",
                           "E-Spectro - End Station (Original Mix)",
                           "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                           "Ilija Djokovic - Delusion (Original Mix)",
                           "John Baptiste - Mycelium (Original Mix)",
                           "Lane 8 - Fingerprint (Original Mix)",
                           "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                           "Metodi Hristov, Gallya - Badmash (Original Mix)",
                           "Veerus, Maxie Devine - Nightmare (Original Mix)"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageNameArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: imageNameArray[indexPath.row])
        content.text = imageNameArray[indexPath.row]
        let fontName = content.textProperties.font.fontName
        content.textProperties.font = UIFont(name: fontName, size: 17)!
        content.textProperties.numberOfLines = 0
        content.imageProperties.cornerRadius = 5
        //content.imageProperties.maximumSize = CGSize(width: self.view.frame.height/10, height: self.view.frame.height/10)
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? DetailVC else { return }
        guard let indexPath = self.tableView.indexPathForSelectedRow else { return }
        destinationVC.trackTitle = imageNameArray[indexPath.row]
    }
}
