//
//  BatchesViewController.swift
//  Lifeboat
//
//  Created by Kav Interactive on 10/10/19.
//  Copyright © 2019 Kav Interactive. All rights reserved.
//

import UIKit

class BatchesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.setHidesBackButton(false, animated:true)
       self.title = "Batches"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
