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
        content.textProperties.numberOfLines = 0
        content.imageProperties.cornerRadius = 15
        content.imageProperties.maximumSize = CGSize(width: self.view.frame.height/10, height: self.view.frame.height/10)
        
        cell.contentConfiguration = content
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
