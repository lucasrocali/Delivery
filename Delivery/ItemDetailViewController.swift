//
//  ItemDetailViewController.swift
//  Delivery
//
//  Created by Lucas Rocali on 1/12/16.
//  Copyright © 2016 Lucas Rocali. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {
    
    var dataManager = DataManager()
    var categoryIndex : Int = -1
    var itemIndex : Int = -1
    
    var item : Item = Item()

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var qtyLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var qtyStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        item = dataManager.categories[categoryIndex].items[itemIndex]
        
        nameLabel.text = item.name
        descriptionLabel.text = item.description
        valueLabel.text = item.value.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func qtyStepperAction(sender: AnyObject) {
        qtyLabel.text = "\(Int(qtyStepper.value))"
      
        let total : Float = item.value * Float(qtyStepper.value)
        
        totalLabel.text = "\(total)"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
