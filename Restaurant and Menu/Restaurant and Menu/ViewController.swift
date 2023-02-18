//
//  ViewController.swift
//  Restaurant and Menu
//
//  Created by Jason on 2023/2/17.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let resturants = ["HaiDiLao","McDonald's","shinyashokudo","Shaker"]
    let food = ["Hot Pot","Burger","Sushi","Steak"]
    
    @IBOutlet weak var tbViewTop: UITableView!
    
    @IBOutlet weak var tbViewBottom: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tbViewTop {
            return resturants.count
        }else {
            return food.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tbViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = resturants[indexPath.row]
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = food[indexPath.row]
            return cell
        }
        

    }
    
}

