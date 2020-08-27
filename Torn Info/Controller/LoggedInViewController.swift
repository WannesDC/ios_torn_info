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
    @IBOutlet weak var progressBarView: UIStackView!
    
    
    @IBOutlet weak var mainInfoStackView: UIStackView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    
    @IBOutlet weak var drugCooldownLabel: UILabel!
    @IBOutlet weak var boosterCooldownLabel: UILabel!
    @IBOutlet weak var medicalCooldownLabel: UILabel!
    
    @IBOutlet weak var lifeCP: CircularProgressView!
    @IBOutlet weak var energyCP: CircularProgressView!
    @IBOutlet weak var nerveCP: CircularProgressView!
    @IBOutlet weak var happyCP: CircularProgressView!
    @IBOutlet weak var lifeLabel: UILabel!
    @IBOutlet weak var energyLabel: UILabel!
    @IBOutlet weak var nerveLabel: UILabel!
    @IBOutlet weak var happyLabel: UILabel!
    
    
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
        headerPageView.layer.cornerRadius = 2.0
        headerPageView.layer.shadowColor = UIColor.gray.cgColor
        headerPageView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        headerPageView.layer.shadowRadius = 6.0
        headerPageView.layer.shadowOpacity = 0.7
        
        //mainCard
        mainPageView.layer.cornerRadius = 2.0
        mainPageView.layer.shadowColor = UIColor.gray.cgColor
        mainPageView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        mainPageView.layer.shadowRadius = 6.0
        mainPageView.layer.shadowOpacity = 0.7
        
        
        
    }
    

    func updateUI(with: Profile?) {
        
        //header
        self.nameLabel.text = "\(with?.name ?? "N/A") [\(with?.playerID ?? 0)]"
        self.lastActionLabel.text = with?.lastAction.relative
        
        //Main Screen
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        
        self.statusLabel.text = "Status: \(with?.status.description ?? "N/A")"
        self.moneyLabel.text = "Money: $ \(numberFormatter.string(for: with?.moneyOnHand) ?? "N/A" )"
        self.pointsLabel.text = "Points: \(numberFormatter.string(for: with?.points) ?? "N/A")"
        
        
        self.drugCooldownLabel.text = "D: \((with?.cooldowns.drug)! / (60*60) % 48 ) hours \((with?.cooldowns.drug)! / (60) % 60 ) minutes"
        self.boosterCooldownLabel.text = "B: \((with?.cooldowns.booster)! / (60*60) % 48 ) hours \((with?.cooldowns.booster)! / (60) % 60 ) minutes"
        self.medicalCooldownLabel.text = "M: \((with?.cooldowns.medical)! / (60*60) % 48 ) hours \((with?.cooldowns.medical)! / (60) % 60 ) minutes"
        
        //Life
        lifeLabel.text = "\(with?.life.current ?? 0) / \(with?.life.maximum ?? 0)"        
        lifeCP.trackColour = UIColor(red: 102/255, green: 102/255, blue: 153/255, alpha: 0.5)
        lifeCP.progressColour = UIColor(red: 76/255, green: 76/255, blue: 178/255, alpha: 1)
        lifeCP.setProgressWithAnimation(duration: 1.0, value: (Float((with?.life.current)!) / Float((with?.life.maximum)!)))
        
        //Energy
        energyLabel.text = "\(with?.energy.current ?? 0) / \(with?.energy.maximum ?? 0)"
        energyCP.trackColour = UIColor(red: 102/255, green: 153/255, blue: 102/255, alpha: 0.5)
        energyCP.progressColour = UIColor(red: 76/255, green: 178/255, blue: 76/255, alpha: 1)
        energyCP.setProgressWithAnimation(duration: 1.0, value: (Float((with?.energy.current)!) / Float((with?.energy.maximum)!)))
        
        //Nerve
        nerveLabel.text = "\(with?.nerve.current ?? 0) / \(with?.nerve.maximum ?? 0)"
        nerveCP.trackColour = UIColor(red: 153/255, green: 102/255, blue: 102/255, alpha: 0.5)
        nerveCP.progressColour = UIColor(red: 178/255, green: 76/255, blue: 76/255, alpha: 1)
        nerveCP.setProgressWithAnimation(duration: 1.0, value: (Float((with?.nerve.current)!) / Float((with?.nerve.maximum)!)))
        
        //Happy
        happyLabel.text = "\(with?.happy.current ?? 0) / \(with?.happy.maximum ?? 0)"
        happyCP.trackColour = UIColor(red: 178/255, green: 178/255, blue: 76/255, alpha: 0.5)
        happyCP.progressColour = UIColor(red: 191/255, green: 191/255, blue: 63/255, alpha: 1)
        happyCP.setProgressWithAnimation(duration: 1.0, value: (Float((with?.happy.current)!) / Float((with?.happy.maximum)!)))
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
