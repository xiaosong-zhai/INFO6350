//
//  HomeViewController.swift
//  tikPhoto(final)
//
//  Created by Jason on 2023/4/22.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UploadImageProtocol {
    var images : [UIImage] = [UIImage]()
    var locations = [String]()
    var imageTitles : [String] = [String]()
    
    @IBOutlet weak var tblView: UITableView!
    
    var uploadImageVC : UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let controller = navigationController?.tabBarController
        uploadImageVC = navigationController?.tabBarController?.viewControllers?[0]
        print(uploadImageVC?.title)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imageConatiner.image = images[indexPath.row]
        cell.lblTitle.text = imageTitles[indexPath.row]
        cell.lblLocation.text = locations[indexPath.row]
        return cell
    }
    
    
    func uploadedImageDelegate(img: UIImage, locationImg: String, titleImg: String) {
        images.append(img)
        locations.append(locationImg)
        imageTitles.append(titleImg)
        
        tblView.reloadData()

    }

}
