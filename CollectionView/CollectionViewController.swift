//
//  CollectionViewController.swift
//  CollectionView
//
//  Created by Tarang Hirani on 10/26/16.
//  Copyright © 2016 Tarang Hirani and Aditya Yadav. All rights reserved.
//

import Foundation
import UIKit

private let cellIdentifier = "cell"
private var items = [CardData]()

class CollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.customLayout()
        self.collectionView?.backgroundColor = UIColor.fromHex(hex: "#ECEFF1", alpha: 1)
        items = self.populateData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //number of items in the collection view
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    //create each cell and set the title, background colour
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //get reference to storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CustomCell
        cell.setUpCell(indexpath: indexPath)
        cell.profileImageView.image = items[indexPath.row].profileImage
        cell.usernameLabel.text = items[indexPath.row].username
        cell.timeLabel.text = items[indexPath.row].time + " ago"
        return cell
    }
    
    //this sets up a custom layout
    private func customLayout() {
        let customLayout = UICollectionViewFlowLayout()
        self.collectionView?.collectionViewLayout = customLayout
        
        customLayout.sectionInset = UIEdgeInsets(top: 15, left: 25, bottom: 15, right: 25)
        let screenSize: CGRect = UIScreen.main.bounds
        
        let screenWidth = screenSize.width * 0.85
        let screenHeight = screenSize.height * 0.7
        
        customLayout.itemSize = CGSize(width: screenWidth, height: screenHeight)
        customLayout.minimumLineSpacing = 20
    }
    
    private func populateData() -> [CardData] {
        var data = [CardData]()
        data.append(CardData(username: "Tarang Hirani", profileImage: UIImage(named: "profile.png")!, time: "20m"))
        data.append(CardData(username: "Aditya Yadav", profileImage: UIImage(named: "profile.png")!, time: "5m"))
        data.append(CardData(username: "John Doe", profileImage: UIImage(named: "profile.png")!, time: "10m"))
        data.append(CardData(username: "Andy Smith", profileImage: UIImage(named: "profile.png")!, time: "1h"))
        data.append(CardData(username: "Jack Rider", profileImage: UIImage(named: "profile.png")!, time: "2d"))
        data.append(CardData(username: "Michelle Walker", profileImage: UIImage(named: "profile.png")!, time: "10d"))
        data.append(CardData(username: "Tim Blind", profileImage: UIImage(named: "profile.png")!, time: "2d"))
        data.append(CardData(username: "David Langan", profileImage: UIImage(named: "profile.png")!, time: "36s"))
        data.append(CardData(username: "Alex Morgan", profileImage: UIImage(named: "profile.png")!, time: "40m"))
        return data
    }
}
