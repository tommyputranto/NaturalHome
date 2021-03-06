//
//  FittingViewController.swift
//  NaturalStore
//
//  Created by BRI on 13/07/18.
//  Copyright © 2018 Tommy. All rights reserved.
//

import UIKit

class FittingViewController: UIViewController {

    class func instantiateFromStoryboard() -> FittingViewController {
        let storyboard = UIStoryboard(name: Storyboard.fitting, bundle: StoreRouter.bundle )
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! FittingViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
