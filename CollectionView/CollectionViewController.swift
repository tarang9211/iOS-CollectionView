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
private let items = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

class CollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        //set title of each cell
        cell.title.text = String(items[indexPath.item])
        cell.backgroundColor = UIColor.cyan
        
        return cell
    }
}
