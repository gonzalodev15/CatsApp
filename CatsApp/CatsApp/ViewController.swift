//
//  ViewController.swift
//  CatsApp
//
//  Created by Gonzalo on 5/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goToCatsController(_ sender: Any) {
        let vc = CatBreedsViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

