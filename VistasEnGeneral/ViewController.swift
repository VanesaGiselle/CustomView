//
//  ViewController.swift
//  VistasEnGeneral
//
//  Created by Vanesa Korbenfeld on 04/01/2022.
//

import UIKit

class ViewController: UIViewController {
    let myVista2 = MyVista()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        myVista2.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(myVista2)
        
        myVista2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        myVista2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        myVista2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
    }


}

