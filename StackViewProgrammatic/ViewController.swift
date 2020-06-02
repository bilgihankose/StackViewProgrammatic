//
//  ViewController.swift
//  StackViewProgrammatic
//
//  Created by Bilgihan Köse on 2.06.2020.
//  Copyright © 2020 Bilgihan Kose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let titleLabel = UILabel()
    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        //label
        titleLabel.text = "Stack View Example"
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //stackView
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        
        let one = makeLabelForStackView(title: "Too late, my time has come")
        stackView.addArrangedSubview(one)
        
        let two = makeLabelForStackView(title: "Sends shivers down my spine")
        stackView.addArrangedSubview(two)
        
        let three = makeLabelForStackView(title: "Body's aching all the time")
        stackView.addArrangedSubview(three)
        
        let four = makeLabelForStackView(title: "Goodbye everybody, I've got to go")
        stackView.addArrangedSubview(four)
        
        let five = makeLabelForStackView(title: "Gotta leave you all behind and face the truth")
        stackView.addArrangedSubview(five)
    }
    
    func makeLabelForStackView(title: String) -> UILabel {
        let svLabel = UILabel()
        svLabel.text = title
        svLabel.backgroundColor = .blue
        svLabel.textColor = .white
        svLabel.numberOfLines = 0
        return svLabel
    }
    
}

