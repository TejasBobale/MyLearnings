//
//  ViewController.swift
//  A New Scree
//
//  Created by Tejas Bobale on 22/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("First Screen")
        self.view.backgroundColor = .cyan
    }
    
    @IBAction func btn1Action(_ sender: UIButton) {
        goToNewView()
        
    }
    
    @IBAction func btn2action(_ sender: UIButton) {
        let name = sender.currentTitle ?? "Hi"
        goToNewView()
    }
    
    func goToNewView(){
        
        
        let myView = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        present(myView, animated: true)
    }
    
}


