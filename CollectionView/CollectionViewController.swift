//
//  CollectionViewController.swift
//  CollectionView
//
//  Created by Tarang Hirani on 10/26/16.
//  Copyright © 2016 Tarang Hirani. All rights reserved.
//

import Foundation
import UIKit

private let cellIdentifier = "cell"
private var items = [CardData]()

class CollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.customLayout()
        self.collectionView?.backgroundColor = UIColor(red: 236/255, green: 239/255, blue: 241/255, alpha: 1)
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

        cell.setUpCell()
        cell.profileImageView.image = items[indexPath.row].profileImage
        
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
        let userOne = CardData(username: "Tarang Hirani", profileImage: UIImage(named: "profile.png")!, time: "20m ago")
        let userTwo = CardData(username: "Aditya Yadav", profileImage: UIImage(named: "profile.png")!, time: "5m ago")
        data.append(userOne)
        data.append(userTwo)
        return data
    }
}
