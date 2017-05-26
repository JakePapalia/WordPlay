//
//  ViewController.swift
//  WordPlay
//
//  Created by Jake Papalia on 12/3/16.
//  Copyright © 2016 Jake Papalia. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    var myMadLib1 = MadLibs()
    
    @IBOutlet weak var noun1: UITextField!
    @IBOutlet weak var noun2: UITextField!
    @IBOutlet weak var noun3: UITextField!
    
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var verb2: UITextField!
    
    @IBOutlet weak var adj1: UITextField!
    @IBOutlet weak var adj2: UITextField!
    @IBOutlet weak var adj3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondViewController
        
        myMadLib1.noun1 = noun1.text!
        myMadLib1.noun2 = noun2.text!
        myMadLib1.noun3 = noun3.text!
        
        myMadLib1.verb1 = verb1.text!
        myMadLib1.verb2 = verb2.text!
        
        myMadLib1.adj1 = adj1.text!
        myMadLib1.adj2 = adj2.text!
        myMadLib1.adj3 = adj3.text!
        
        nvc.myMadLib2 = myMadLib1
    }
}



