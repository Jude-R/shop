//
//  servicesVC.swift
//  shoppingApp
//
//  Created by Kern Ranjitsingh on 2017-11-06.
//  Copyright © 2017 Devign. All rights reserved.
//

import UIKit

class servicesVC: UIViewController {

    var sale: sale?
    
    @IBOutlet weak var itemLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Cost: \(sale?.cost)")
        print("item: \(sale?.item)")
        itemLbl.text = sale?.item
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
