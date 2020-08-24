//
//  LoggedInViewController.swift
//  Torn Info
//
//  Created by Wannes De Craene on 22/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastActionLabel: UILabel!
    @IBOutlet weak var mainPageView: UIView!
    @IBOutlet weak var headerPageView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getProfile()
        loadUI()
        // Do any additional setup after loading the view.
    }
    
    
    func getProfile() -> Void {
        let endpoint = "user/?selections=profile,bars,cooldowns,money&key="+globalApiKey
        
        let getRequest = APIRequest(endpoint: endpoint)
        
        getRequest.callProfile {
            (profile) in
             DispatchQueue.main.async {
                
                self.updateUI(with: profile)

            }
                
            //updateviewwith information
        }
    }
    
    func loadUI(){
        //headerCard
        headerPageView.layer.cornerRadius = 10.0
        headerPageView.layer.shadowColor = UIColor.gray.cgColor
        headerPageView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        headerPageView.layer.shadowRadius = 6.0
        headerPageView.layer.shadowOpacity = 0.7
        
        //mainCard
        mainPageView.layer.cornerRadius = 10.0
        mainPageView.layer.shadowColor = UIColor.gray.cgColor
        mainPageView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        mainPageView.layer.shadowRadius = 6.0
        mainPageView.layer.shadowOpacity = 0.7
    }

    func updateUI(with: Profile?) {
        self.nameLabel.text = "\(with?.name ?? "N/A") [\(with?.playerID ?? 0)]"
        self.lastActionLabel.text = with?.lastAction.relative
        
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
