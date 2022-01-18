//
//  ViewController2.swift
//  VistasEnGeneral
//
//  Created by Vanesa Korbenfeld on 04/01/2022.
//
import UIKit

class ViewController2: UIViewController {
    let button = UIButton()
    let myVista = MyVista()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back", for: .normal)
        
        self.view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        button.addTarget(self, action: #selector(onButtonTapped), for: .touchUpInside)
        
        myVista.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(myVista)
        
        myVista.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        myVista.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        myVista.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
    }
    
    @objc
    func onButtonTapped(){
        print("Se clickeo el boton.")
        dismiss(animated: true, completion: { print("Se dismisseo")})
        print("Mostrar.")
    }
}

class MyVista: UIView {
    var button: UIButton!
    var text: UILabel!
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .gray
        button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(button)
        button.setTitle("Boton", for: .normal)
        
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        
        text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(text)
        text.text = "Primer Boton"
        
        text.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        text.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -10).isActive = true
        text.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
    }
}
