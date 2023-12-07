//
//  ViewController.swift
//  StockConverter
//
//  Created by Kaline Farias on 7/12/23.
//

import UIKit

class FirstScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
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
        
        let stockQuantity = UILabel()
        stockQuantity.translatesAutoresizingMaskIntoConstraints = false
        stockQuantity.text = "Quantidade de stocks:"
        stockQuantity.numberOfLines = 0
        view.addSubview(stockQuantity)
        
        
        NSLayoutConstraint.activate([
            stockQuantity.topAnchor.constraint(equalTo: totalValue.bottomAnchor, constant: 48),
            stockQuantity.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stockQuantity.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        
        ])
        
        let stockValue = UILabel()
        stockValue.translatesAutoresizingMaskIntoConstraints = false
        stockValue.text = "Valor unitário das stocks:"
        stockValue.numberOfLines = 0
        view.addSubview(stockValue)
        
        NSLayoutConstraint.activate([
            stockValue.topAnchor.constraint(equalTo: stockQuantity.bottomAnchor, constant: 20),
            stockValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stockValue.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        
        ])
        
        let currencyExchangeRate = UILabel()
        currencyExchangeRate.translatesAutoresizingMaskIntoConstraints = false
        currencyExchangeRate.text = "GBP exchange rate:"
        currencyExchangeRate.numberOfLines = 0
        view.addSubview(currencyExchangeRate)
        
        NSLayoutConstraint.activate([
            currencyExchangeRate.topAnchor.constraint(equalTo: stockValue.bottomAnchor, constant: 20),
            currencyExchangeRate.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            currencyExchangeRate.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        
        ])
        
        let countryTax = UILabel()
        countryTax.translatesAutoresizingMaskIntoConstraints = false
        countryTax.text = "GBP exchange rate:"
        countryTax.numberOfLines = 0
        view.addSubview(countryTax)
        
        NSLayoutConstraint.activate([
            countryTax.topAnchor.constraint(equalTo: currencyExchangeRate.bottomAnchor, constant: 20),
            countryTax.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            countryTax.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        
        ])
        
        
        
        // Do any additional setup after loading the view.
    }


}


