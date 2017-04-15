//
//  SendingVC.swift
//  HY_DelegatePattern
//
//  Created by Harish Yadav on 15/04/17.
//  Copyright © 2017 Harish Yadav. All rights reserved.
//

import UIKit

//declearing the Delegates

protocol DataSentDelegates {
    func userDidEnterData(data:String)
}


class SendingVC: UIViewController {

    @IBOutlet weak var dataEnteryTextField: UITextField!
    
    var delegate: DataSentDelegates? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func sendbtnwasPressed(_ sender: Any) {
        
        if delegate != nil
        {
            if dataEnteryTextField.text != nil
            {
                let data = dataEnteryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
  
    

    

}
