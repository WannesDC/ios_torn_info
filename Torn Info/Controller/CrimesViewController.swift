//
//  CrimesViewController.swift
//  Torn Info
//
//  Created by Wannes De Craene on 22/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import UIKit

class CrimesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getCrimes()
        // Do any additional setup after loading the view.
        //circularProgressBar

    }
    
    func getCrimes() -> Void {
        let endpoint = "faction/?selections=crimes&key="+globalApiKey
        
        let getRequest = APIRequest(endpoint: endpoint)
        getRequest.callCrimes{
            (crimes) in
            print(crimes)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
