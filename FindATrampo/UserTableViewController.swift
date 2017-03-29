//
//  UserTableViewController.swift
//  FindATrampo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import UIKit

class UserTableViewController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    //var filteredArtists = [Artist]()
    //var artists = [Artist]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  artists = ArtistDAO.getArtists();
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if searchController.isActive && searchController.searchBar.text != "" {
        //    return filteredArtists.count
        }
        
        return 0
        //return artists.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "artistIdentifier", for: indexPath)
        
        if let artistCell = cell as? UserTableViewCell{
          //  let artist: Artist
            
            if searchController.isActive && searchController.searchBar.text != "" {
            //    artist = filteredArtists[indexPath.row]
            } else {
              //  artist = artists[indexPath.row]
            }
            
         //   artistCell.artistNameLabel.text = artist.getName();
           // artistCell.artistSongLabel.text = artist.getSong();
        }
        
        // Configure the cell...
        
        return cell
        
        // Configure the cell...
        
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    
    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            //self.artists.remove(at: indexPath.row);
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
//    }
    
    
    func filterContent(for searchText: String, scope: String = "All") {
//        filteredArtists = artists.filter({ pod in
    //        return pod.getName().lowercased().contains(searchText.lowercased())
  //      })
        
        tableView.reloadData()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if segue.identifier == "showNextView"
//        {
//            if let newView = segue.destination as? ArtistViewController {
//                
//                let index = tableView.indexPathForSelectedRow?.row
//                
//                var artist = Artist()
//                
//                if searchController.isActive && searchController.searchBar.text != "" {
//                    artist = filteredArtists[index!]
//                }else{
//                    artist = artists[index!]
//                }
//                
//                
//                newView.artist = artist;
//                
//            }
//        }
        
        
    }
    
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
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


extension UserTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContent(for: searchController.searchBar.text!)
    }
}
