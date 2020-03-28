//
//  BodyCollectionViewController.swift
//  avatar
//
//  Created by 蕭聿莘 on 2020/3/19.
//  Copyright © 2020 Kazuku. All rights reserved.
//

import UIKit

private let reuseIdentifier = "BodyCollectionViewCell"
let bodyPics = ["Coffee","ButtonShirt","GymShirt","PolkaDotJacket","ShirtAndCoat","StripedTee","Tee 1","Tee 2","ThunderT-Shirt","Turtleneck"]

class BodyCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = (collectionView.bounds.width - 1 * 1)/2
        let layout = collectionViewLayout as? UICollectionViewFlowLayout
        layout?.itemSize = CGSize(width: width, height: width / 1.313)
        layout?.estimatedItemSize = .zero
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedPic = bodyPics[indexPath.item]
        let parentController = parent as? ViewController
        parentController?.bodyImageView.image = UIImage(named: selectedPic)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return bodyPics.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(BodyCollectionViewCell.self)", for: indexPath) as! BodyCollectionViewCell
        
        cell.bodyImageView.image = UIImage(named: bodyPics[indexPath.item])
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let item = collectionView.cellForItem(at: indexPath) as!BodyCollectionViewCell
        item.backgroundColor = UIColor(named: "spring")
    }
    override func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let item = collectionView.cellForItem(at: indexPath) as! BodyCollectionViewCell
        self.collectionView.delaysContentTouches = false
        item.backgroundColor = UIColor.white
        
    }

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
