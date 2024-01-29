//
//  ThirdViewController.swift
//  SettingApple
//
//  Created by Saahil Kaushal on 07/12/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let reachability = try! Reachability()
    
    @IBOutlet weak var wifiSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wifiSwitch.isOn = false
        
        
        
        
    }
        // USE FOR WIFI CONNECTION TO ENABLE OR DISABLE
    @IBAction func wifiswitch(_ sender: UISwitch) {
        
        reachability.whenReachable = { reachability in
            if reachability.connection == .wifi {
                print("Reachable via WiFi")
            } else {
                print("Reachable via Cellular")
            }
            self.view.window?.rootViewController?.dismiss(animated: true)
        }
        reachability.whenUnreachable = { _ in
            if let networkVc = self.storyboard?.instantiateViewController(withIdentifier: "WiFiErrorViewController") as? WiFiErrorViewController{
                self.present(networkVc, animated: true)
            }
        }
        
        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
    }
    deinit{
        reachability.stopNotifier()
    }
}

    

