//
//  ViewController.swift
//  shoppingApp
//
//  Created by Kern Ranjitsingh on 2017-11-05.
//  Copyright © 2017 Devign. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sale1: sale?
    
    var VC: String!
    
    @IBOutlet weak var eqptBtn: UIButton!
    @IBOutlet weak var pservBtn: UIButton!
    @IBOutlet weak var pSaleBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sale1 = sale()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    
    
    @IBAction func btnPressed(sender:UIButton) {
        if sender.currentTitle == "EQUIPMENT" {
            print("Equipment button pressed")
            print(sender.currentTitle!)
            sale1?.cost = 100.00
            sale1?.item = sender.currentTitle
            self.VC = "equipmentVC"
            
            //performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
            
        } else if sender.currentTitle == "PHOTO-SERVICES" {
            print("Photo-services button pressed")
            print(sender.currentTitle!)
            sale1?.item = sender.currentTitle
            sale1?.cost = 60.00
            self.VC = "servicesVC"
            performSegue(withIdentifier: "showServices", sender: self)
            
        } else {
            print("Photos for sale button pressed")
            print(sender.currentTitle!)
            sale1?.item = sender.currentTitle
            sale1?.cost = 20.00
            self.VC = "saleVC"
            performSegue(withIdentifier: "showSale", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        switch self.VC {
        case "equipmentVC":
//            if let servicesVC = segue.destination as? servicesVC{
//                servicesVC.sale = sale1
//            }
            print("EquipmentVC load")
        case "servicesVC":
            if let servicesVC = segue.destination as? servicesVC{
                servicesVC.sale = sale1
            }
        case "saleVC":
            if let saleVC = segue.destination as? saleVC{
                saleVC.sale2 = sale1
            }
        default:
            print("None of the above code was executed")
            return
        }

        
    }
    
    
    @IBAction func unwindFromDesiredVC(unwindSegue: UIStoryboardSegue){
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

