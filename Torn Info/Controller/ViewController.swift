//
//  ViewController.swift
//  Torn Info
//
//  Created by Wannes De Craene on 15/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var apiKey: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var temp_api_key: String = "utllH7do9sv9ry8d"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        
        guard apiKey.text != "" else {
            print("fill in your api key please!")
            return
        }
        
        login(apiKey: apiKey.text ?? "")
        
        //print(apiKey.text)
    }
    
    func login(apiKey : String) -> Void {
        let endpoint = "user/?selections=basic&key=" + temp_api_key
        
        let getRequest = APIRequest(endpoint: endpoint)
        
        let basicInfo = getRequest.callLogin()
        
        print(basicInfo?.name)
        guard basicInfo?.name != nil else {
            return
        }
        
        let storyboard = UIStoryboard(name: "LoggedIn", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "loggedInView") as UIViewController
        
        present(vc, animated: true, completion: nil)
    }
}

