//
//  ViewController.swift
//  File Name: Shopping_List_App
//  Created by Abdeali Mody on 2020-10-29.
//  Student ID: 301085484
//  App Description: A shopping list application where a user is creating a list of items that they wish to buy.
//  Copyright © 2020 Abdeali Mody. All rights reserved.

import UIKit

class ViewController: UIViewController {

    //Declaring Shopping List Name Text Input field variables.
    @IBOutlet weak var ShopListName: UITextField!
    
    //Declaring Shopping Item List Name Text Input field variables.
    @IBOutlet weak var First_ItemName: UITextField!
    @IBOutlet weak var Second_ItemName: UITextField!
    @IBOutlet weak var Third_ItemName: UITextField!
    @IBOutlet weak var Fourth_ItemName: UITextField!
    @IBOutlet weak var Fifth_ItemName: UITextField!
    @IBOutlet weak var Sixth_ItemName: UITextField!
    @IBOutlet weak var Seventh_ItemName: UITextField!
    @IBOutlet weak var Eighth_ItemName: UITextField!
    @IBOutlet weak var Ninth_ItemName: UITextField!
    
    //Declaring Item Stepper variables.
    @IBOutlet weak var First_ItemStepper: UIStepper!
    @IBOutlet weak var Second_ItemStepper: UIStepper!
    @IBOutlet weak var Third_ItemStepper: UIStepper!
    @IBOutlet weak var Fourth_ItemStepper: UIStepper!
    @IBOutlet weak var Fifth_ItemStepper: UIStepper!
    @IBOutlet weak var Sixth_ItemStepper: UIStepper!
    @IBOutlet weak var Seventh_ItemStepper: UIStepper!
    @IBOutlet weak var Eighth_ItemStepper: UIStepper!
    @IBOutlet weak var Ninth_ItemStepper: UIStepper!
    
    //Declaring Shopping List Item Count variables.
    @IBOutlet weak var First_ItemCount: UILabel!
    @IBOutlet weak var Second_ItemCount: UILabel!
    @IBOutlet weak var Third_ItemCount: UILabel!
    @IBOutlet weak var Fourth_ItemCount: UILabel!
    @IBOutlet weak var Fifth_ItemCount: UILabel!
    @IBOutlet weak var Sixth_ItemCount: UILabel!
    @IBOutlet weak var Seventh_ItemCount: UILabel!
    @IBOutlet weak var Eighth_ItemCount: UILabel!
    @IBOutlet weak var Ninth_ItemCount: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //ShopListName.text = "My Shopping List"
        clean()
    }
    
    //Declaring Stepper Clicked messaged.
    @IBAction func OnStepper_Clicked(_ sender: UIStepper)
    {
        //Assigning Count value from Item Stepper.
        First_ItemCount.text =  String(Int(First_ItemStepper.value))
        Second_ItemCount.text =  String(Int(Second_ItemStepper.value))
        Third_ItemCount.text =  String(Int(Third_ItemStepper.value))
        Fourth_ItemCount.text =  String(Int(Fourth_ItemStepper.value))
        Fifth_ItemCount.text =  String(Int(Fifth_ItemStepper.value))
        Sixth_ItemCount.text =  String(Int(Sixth_ItemStepper.value))
        Seventh_ItemCount.text =  String(Int(Seventh_ItemStepper.value))
        Eighth_ItemCount.text =  String(Int(Eighth_ItemStepper.value))
        Ninth_ItemCount.text =  String(Int(Ninth_ItemStepper.value))
    }
    
    //Cancel Button Function.
    @IBAction func OnCancelButton_Press(_ sender: UIButton)
    {
        //Using alert pop up to confirm from user .
        let alert = UIAlertController(title: "Cancel", message: "Are you sure you want to clear everything?", preferredStyle: .alert)
        
        //addAction method is used to provide addtional buttons in the alert box for eg: Yes & No
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: {action in ()} ))
        
        //I have kept Style attribute to "default" and It will perform the default operations.
         alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {action in
         // Calling the clean function if user clicks on Yes
         self.clean()
     } ))
        
        //present method is used to generatepop up window on the screen.
        present(alert,animated: true)
    }
    // Submit Button Function.
    @IBAction func OnSubmitButton_Press(_ sender: UIButton)
    {
        
        let alert1 = UIAlertController(title: "Submit", message: "List have been saved successfully!!!!!", preferredStyle: .alert)
        
        alert1.addAction(UIAlertAction(title: "OK", style: .cancel, handler: {action in ()} ))
    }
    
    // Creating a fuction clean to earse all the data entered by user.
    func clean()
    {
        ShopListName.text = "My Shopping List"
        
        //Earasing The Input Field to nil.
        First_ItemName.text = ""
        
        First_ItemName.placeholder = "Enter Item"
        First_ItemCount.text = "0"
        First_ItemStepper.value = 0.0
        
        Second_ItemName.text = ""
        Second_ItemName.placeholder = "Enter Item"
        
        //Earasing the count & displaying 0.
        Second_ItemCount.text = "0"
        
        Second_ItemStepper.value = 0.0
        
        Third_ItemName.text = ""
        Third_ItemName.placeholder = "Enter Item"
        Third_ItemCount.text = "0"
        
        // Bringing back stepper values to null
        Third_ItemStepper.value = 0.0
        
        Fourth_ItemName.text = ""
        Fourth_ItemName.placeholder = "Enter Item"
        Fourth_ItemCount.text = "0"
        Fourth_ItemStepper.value = 0.0
        
        Fifth_ItemName.text = ""
        Fifth_ItemName.placeholder = "Enter Item"
        Fifth_ItemCount.text = "0"
        Fifth_ItemStepper.value = 0.0
        
        Sixth_ItemName.text = ""
        Sixth_ItemName.placeholder = "Enter Item"
        Sixth_ItemCount.text = "0"
        Sixth_ItemStepper.value = 0.0
        
        Seventh_ItemName.text = ""
        Seventh_ItemName.placeholder = "Enter Item"
        Seventh_ItemCount.text = "0"
        Seventh_ItemStepper.value = 0.0
        
        Eighth_ItemName.text = ""
        Eighth_ItemName.placeholder = "Enter Item"
        Eighth_ItemCount.text = "0"
        Eighth_ItemStepper.value = 0.0
        
        Ninth_ItemName.text = ""
        Ninth_ItemName.placeholder = "Enter Item"
        Ninth_ItemCount.text = "0"
        Ninth_ItemStepper.value = 0.0
    }
    
}


