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
        
        
        self.drugCooldownLabel.text = "\((with?.cooldowns.drug)! / (60*60) % 48 ) hours \((with?.cooldowns.drug)! / (60) % 60 ) minutes"
        self.boosterCooldownLabel.text = "\((with?.cooldowns.booster)! / (60*60) % 48 ) hours \((with?.cooldowns.booster)! / (60) % 60 ) minutes"
        self.medicalCooldownLabel.text = "\((with?.cooldowns.medical)! / (60*60) % 48 ) hours \((with?.cooldowns.medical)! / (60) % 60 ) minutes"
        //divider
        let line = LineView(frame: CGRect(x: 28, y: 280, width: 200, height: 2))
        self.view.addSubview(line)
        
        //Life
        let lifeLabel = UILabel(frame: CGRect(x: 68.0, y: 40.0, width: 100, height: 100))
        lifeLabel.text = "\(with?.life.current ?? 0) / \(with?.life.maximum ?? 0)"
        lifeLabel.textColor = UIColor.darkGray
        lifeLabel.font = lifeLabel.font.withSize(15)
        
        self.progressBarView.addSubview(lifeLabel)
        
        let lifeCp = CircularProgressView(frame: CGRect(x: 60.0, y: 40.0, width: 100, height: 100))
        lifeCp.trackColour = UIColor(red: 102/255, green: 102/255, blue: 153/255, alpha: 0.5)
        lifeCp.progressColour = UIColor(red: 76/255, green: 76/255, blue: 178/255, alpha: 1)
        self.progressBarView.addSubview(lifeCp)
        lifeCp.setProgressWithAnimation(duration: 1.0, value: (Float((with?.life.current)!) / Float((with?.life.maximum)!)))
        
        //Energy
        
        let energyLabel = UILabel(frame: CGRect(x: 85.0, y: 170.0, width: 100, height: 100))
        energyLabel.text = "\(with?.energy.current ?? 0) / \(with?.energy.maximum ?? 0)"
        energyLabel.textColor = UIColor.darkGray
        energyLabel.font = energyLabel.font.withSize(15)
        
        self.progressBarView.addSubview(energyLabel)
        
        let energyCp = CircularProgressView(frame: CGRect(x: 60.0, y: 170.0, width: 100, height: 100))
        energyCp.trackColour = UIColor(red: 102/255, green: 153/255, blue: 102/255, alpha: 0.5)
        energyCp.progressColour = UIColor(red: 76/255, green: 178/255, blue: 76/255, alpha: 1)
        self.progressBarView.addSubview(energyCp)
        energyCp.setProgressWithAnimation(duration: 1.0, value: (Float((with?.energy.current)!) / Float((with?.energy.maximum)!)))
        
        //Nerve
        
        let nerveLabel = UILabel(frame: CGRect(x: 85.0, y: 300.0, width: 100, height: 100))
        nerveLabel.text = "\(with?.nerve.current ?? 0) / \(with?.nerve.maximum ?? 0)"
        nerveLabel.textColor = UIColor.darkGray
        nerveLabel.font = nerveLabel.font.withSize(15)
        
        self.progressBarView.addSubview(nerveLabel)
        
        let nerveCp = CircularProgressView(frame: CGRect(x: 60.0, y: 300.0, width: 100, height: 100))
        nerveCp.trackColour = UIColor(red: 153/255, green: 102/255, blue: 102/255, alpha: 0.5)
        nerveCp.progressColour = UIColor(red: 178/255, green: 76/255, blue: 76/255, alpha: 1)
        self.progressBarView.addSubview(nerveCp)
        nerveCp.setProgressWithAnimation(duration: 1.0, value: (Float((with?.nerve.current)!) / Float((with?.nerve.maximum)!)))
        
        //Happy
        
        let happyLabel = UILabel(frame: CGRect(x: 68.0, y: 430.0, width: 100, height: 100))
        happyLabel.text = "\(with?.happy.current ?? 0) / \(with?.happy.maximum ?? 0)"
        happyLabel.textColor = UIColor.darkGray
        happyLabel.font = happyLabel.font.withSize(15)
        
        self.progressBarView.addSubview(happyLabel)
        
        let happyCp = CircularProgressView(frame: CGRect(x: 60.0, y: 430.0, width: 100, height: 100))
        happyCp.trackColour = UIColor(red: 178/255, green: 178/255, blue: 76/255, alpha: 0.5)
        happyCp.progressColour = UIColor(red: 191/255, green: 191/255, blue: 63/255, alpha: 1)
        self.progressBarView.addSubview(happyCp)
        happyCp.setProgressWithAnimation(duration: 1.0, value: (Float((with?.happy.current)!) / Float((with?.happy.maximum)!)))
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
