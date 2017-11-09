//
//  saleVC.swift
//  shoppingApp
//
//  Created by Kern Ranjitsingh on 2017-11-07.
//  Copyright © 2017 Devign. All rights reserved.
//

import UIKit

class saleVC: UIViewController {

    var sale2: sale?
    
    @IBOutlet weak var salesLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("Category: \(sale2?.item)")
        salesLbl.text = sale2?.item

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
