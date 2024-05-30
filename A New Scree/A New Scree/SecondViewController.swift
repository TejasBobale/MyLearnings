//
//  SecondViewController.swift
//  A New Scree
//
//  Created by Tejas Bobale on 30/05/24.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    let nameOfBtn: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.layer.cornerRadius = 20
        self.view.backgroundColor = .clear
        
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    let cosmeticGynecology: [String] = ["Surgical Cosmetic Gynecology", "Non-Surgical Cosmetic Gynecology"]
    let Aesthetics = ["Laser Hair Removal",
                                      "Lase Scar/ Stretch Mark Reduction",
                                      "Laser Vulvar Whitening",
                                      "Chemical Peels",
                                     " Botox Fillers and Injectibles",
                                      "Laser Vaginal Rejuvenation"]
    
 

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        
        cell.textLabel?.text = "Hi"
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myView = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        present(myView, animated: true)
    }
}
