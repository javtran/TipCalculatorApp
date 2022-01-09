//
//  SettingsViewController.swift
//  Prework
//
//  Created by Jackson Tran on 1/8/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet weak var darkModeLabel: UILabel!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Resync the darkMode state
        darkModeSwitch.setOn(defaults.bool(forKey: "darkMode"), animated: false)
        if defaults.bool(forKey: "darkMode") == true {
            view.backgroundColor = UIColor.black
            navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.systemBackground]
            darkModeLabel.textColor = UIColor.systemBackground
        } else {
            view.backgroundColor = UIColor.systemBackground
            navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
            darkModeLabel.textColor = UIColor.black
        }
    }
    
    func changeBackground() {
        if darkModeSwitch.isOn == true {
            UIView.animate(withDuration: 0.5, animations: {self.view.backgroundColor = UIColor.black
                self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.systemBackground]
                self.darkModeLabel.textColor = UIColor.systemBackground
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {self.view.backgroundColor = UIColor.systemBackground
                self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
                self.darkModeLabel.textColor = UIColor.black
            })
        }
        
        
    }
    // Saves darkMode state in defaults
    @IBAction func switched(_ sender: Any) {
        
        defaults.set(darkModeSwitch.isOn, forKey: "darkMode")
        
        defaults.synchronize()
        changeBackground()
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
