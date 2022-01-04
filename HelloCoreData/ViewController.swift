//
//  ViewController.swift
//  HelloCoreData
//
//  Created by administrator on 04/01/2022.
//

import UIKit

let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext


class ViewController: UIViewController {

    @IBAction func saveUser(_ sender: UIButton) {
        HelloCoreData.saveUser()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

func saveUser() {
    let user = User(context: managedObjectContext)
    // Under the 'saveUser' method, after the 'let user = ....' statement
    user.firstname = "Bob"
    user.email = "Bob@bobmail.com"
    if managedObjectContext.hasChanges {
        //What do you think would trigger the  catch statement below? 
        do {
            try managedObjectContext.save()
            print("Success!")
        } catch {
            print("error \(error)")
        }
    }
    
}

