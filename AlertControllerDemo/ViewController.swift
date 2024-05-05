//
//  ViewController.swift
//  AlertControllerDemo
//
//  Created by Macintosh on 22/12/23.
//

import UIKit

class ViewController: UIViewController {
    var alertController : UIAlertController?
    var okAction : UIAlertAction?
    var cancelAction : UIAlertAction?
    var nameTextField : UITextField?
    var passwordTextField : UITextField?
    var deleteAction : UIAlertAction?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnClick(_ sender: UIButton) {
        if (sender.tag == 0)
        {
            simpleAlert()
        }
        else if(sender.tag == 1)
        {
            alertWithTextField()
        }
        else if(sender.tag == 2)
        {
            actionSheetAlert()
        }
        else if(sender.tag == 3)
        {

        }
        else if(sender.tag == 4)
        {

        }

    }
        func simpleAlert(){
            alertController = UIAlertController(title: "Submit",
                                                message: "do you Want To Submit?",
                                                preferredStyle:.alert)

            okAction = UIAlertAction(
                title: "ok",
                style:.default,
                handler: {(action) in
                    print("ok Button clicked")
                })
            cancelAction = UIAlertAction(title: "cancel", style:.cancel){(action) in   print("cancel Button Clicked")
        
        }
            deleteAction = UIAlertAction(title: "delete", style: .destructive, handler: { action in
                print("dele")
            })
            alertController?.addAction(deleteAction!)
            alertController?.addAction(okAction!)
            alertController?.addAction(cancelAction!)

            self.present(alertController!, animated: true)
    }
    func alertWithTextField(){
        alertController = UIAlertController(title: "Test", message: "Enter Your Name", preferredStyle: .alert)
        okAction = UIAlertAction(
            title: "ok",
            style:.default,
            handler: {action in print("ok Clicked")
    })
        cancelAction = UIAlertAction(title: "Cancel", style: .default){action in print("Cancel Clicked")

        }
        alertController?.addTextField(configurationHandler: {textfield in self.nameTextField = textfield})
        alertController?.addAction(okAction!)
        alertController?.addAction(cancelAction!)
        self.present(alertController!,animated: true)
    }
    func actionSheetAlert(){
        alertController = UIAlertController(
            title: "Test", message: "Do You Want To Submit", preferredStyle: .actionSheet)

        cancelAction = UIAlertAction(title: "Cancel", style:.cancel){
            action in print("Cancel Clicked")}
                                 let deleteAction = UIAlertAction(title: "Delete", style:.destructive){action in print("Destructive btn clicked")}
                                 alertController?.addAction(okAction!)
                                 alertController?.addAction(cancelAction!)
                                 alertController?.addAction(deleteAction)
                                 self.present(alertController!, animated: true)
    }
}
       
