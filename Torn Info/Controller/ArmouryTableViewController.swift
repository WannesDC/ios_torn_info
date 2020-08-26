//
//  ArmouryTableViewController.swift
//  Torn Info
//
//  Created by Wannes De Craene on 24/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//
// Source for search:
//      https://vasundharavision.com/blog/ios/how-to-use-search-bar-in-table-view

import UIKit

class ArmouryTableViewController: UITableViewController, UISearchBarDelegate {

    @IBOutlet weak var searchArmourynews: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchArmourynews.delegate = self
        getArmouryNews()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    var array : [News] = []
    var searchArray : [News]! = []
    
    func getArmouryNews() -> Void {
        let endpoint = "faction/?selections=armorynewsfull&key="+globalApiKey
        
        let getRequest = APIRequest(endpoint: endpoint)
        getRequest.callArmoryNews{
            (armoryNews) in
            guard armoryNews != nil else {
                return
            }
            
            armoryNews?.armorynews.values.forEach{
                    value in self.array.append(value)
            }
            
            self.array = self.array.sorted(by: { $0.timestamp > $1.timestamp })
            
            self.searchArray = self.array
            DispatchQueue.main.async {
                self.viewWillAppear(true)
            }
            }
            
    }
    

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(array.count)
        if section == 0 {
            return self.searchArray.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath)

        
        let news = self.searchArray[indexPath.row]
        cell.textLabel?.text = news.convertTimeStamp()
        cell.detailTextLabel?.text = news.stripHtmlFromNews()

        return cell
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        searchArray = array
        searchBar.endEditing(true)
        tableView.reloadData()
    }

    

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        searchArray = searchText.isEmpty ? array : array.filter {
            (item: News) -> Bool in
            // returns true if searchtext matches item
            if item.news.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil {
                print(item.news)
                return true
            }else {
                return false
            }

        }
        tableView.reloadData()
        
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
