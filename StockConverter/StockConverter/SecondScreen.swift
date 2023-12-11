//
//  SecondScreen.swift
//  StockConverter
//
//  Created by Kaline Farias on 8/12/23.
//

import UIKit

class SecondScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let totalValue = UILabel()
        totalValue.translatesAutoresizingMaskIntoConstraints = false
        totalValue.text = "0000,00"
        totalValue.numberOfLines = 0
        totalValue.font = UIFont.systemFont(ofSize: 48)
        totalValue.textColor = UIColor.systemMint
        totalValue.textAlignment = .center
        view.addSubview(totalValue)
        
        
        NSLayoutConstraint.activate([
            totalValue.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            totalValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            totalValue.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        
        ])
        
        let currencyExchangeRate = UILabel()
        currencyExchangeRate.translatesAutoresizingMaskIntoConstraints = false
        currencyExchangeRate.text = "GBP exchange rate:"
        currencyExchangeRate.numberOfLines = 0
        view.addSubview(currencyExchangeRate)
        
        NSLayoutConstraint.activate([
            currencyExchangeRate.topAnchor.constraint(equalTo: totalValue.bottomAnchor, constant: 48),
            currencyExchangeRate.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            currencyExchangeRate.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        
        ])
        
        let countryTax = UILabel()
        countryTax.translatesAutoresizingMaskIntoConstraints = false
        countryTax.text = "Estonian tax: 20%."
        countryTax.numberOfLines = 0
        view.addSubview(countryTax)
        
        NSLayoutConstraint.activate([
            countryTax.topAnchor.constraint(equalTo: currencyExchangeRate.bottomAnchor, constant: 20),
            countryTax.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            countryTax.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        
        ])
        
        let stockQuantityInput = UITextField()
        stockQuantityInput.translatesAutoresizingMaskIntoConstraints = false
        stockQuantityInput.borderStyle = .roundedRect
        stockQuantityInput.placeholder = "Teste"
        view.addSubview(stockQuantityInput)
        
        NSLayoutConstraint.activate([
            stockQuantityInput.topAnchor.constraint(equalTo: countryTax.bottomAnchor, constant: 20),
            stockQuantityInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stockQuantityInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        let stockValueInput = UITextField()
        stockValueInput.translatesAutoresizingMaskIntoConstraints = false
        stockValueInput.borderStyle = .roundedRect
        stockValueInput.placeholder = "Teste"
        view.addSubview(stockValueInput)
        
        NSLayoutConstraint.activate([
            stockValueInput.topAnchor.constraint(equalTo: stockQuantityInput.bottomAnchor, constant: 20),
            stockValueInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stockValueInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        let simulatorButton = UIButton()
        view.addSubview(simulatorButton)
        simulatorButton.translatesAutoresizingMaskIntoConstraints = false
        simulatorButton.configuration = .filled()
        simulatorButton.configuration?.baseBackgroundColor = .systemMint
        simulatorButton.configuration?.title = "Simulate now!"
        
        NSLayoutConstraint.activate([
            simulatorButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            simulatorButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            simulatorButton.topAnchor.constraint(equalTo: stockValueInput.bottomAnchor, constant: 48)
            
        ])
        
        
    }
}
