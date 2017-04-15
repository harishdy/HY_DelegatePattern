//
//  ReceivingVC.swift
//  HY_DelegatePattern
//
//  Created by Harish Yadav on 15/04/17.
//  Copyright © 2017 Harish Yadav. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController,DataSentDelegates {

    @IBOutlet weak var receivingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    func userDidEnterData(data: String) {
        receivingLabel.text = data
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC"
        {
            let sendingVC: SendingVC = segue.destination as!SendingVC
            sendingVC.delegate = self
        }
    }

}

