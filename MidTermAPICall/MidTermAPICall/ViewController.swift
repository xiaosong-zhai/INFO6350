//
//  ViewController.swift
//  MidTermAPICall
//
//  Created by Jason on 2023/3/18.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {
    
    @IBOutlet weak var txtStockSymbol: UITextField!
    
    @IBOutlet weak var lblCompanyName: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    
    @IBOutlet weak var lblWebsite: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func getValue(_ sender: Any) {
        guard let symbol = txtStockSymbol.text else {return}
        
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        
        AF.request(url).responseJSON { responseDecodable in
//            SwiftSpinner.hide()
            if responseDecodable.error != nil {
                print("Error in response")
                return
            }
            guard let rawData = responseDecodable.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            print(stock)
            let symbol = stock["symbol"].stringValue
            let companyName = stock["companyName"].stringValue
            let price = stock["price"].doubleValue
            let website = stock["website"].stringValue
            print("Symbol = \(symbol)")
            print("companyName = \(companyName)")
            print("price = \(price)")
            print("website = \(website)")
            self.lblCompanyName.text = "CompanyName = \(companyName)"
            self.lblPrice.text = "Price = \(price) $"
            self.lblWebsite.text = "Website = \(website)"
        }
        
    }
    
    
}
