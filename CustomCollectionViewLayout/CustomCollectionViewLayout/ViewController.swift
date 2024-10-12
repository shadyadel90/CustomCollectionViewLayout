//
//  ViewController.swift
//  CustomCollectionViewLayout
//
//  Created by Shady Adel on 12/10/2024.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectioView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectioView.dataSource = self
        collectioView.delegate = self
        collectioView.collectionViewLayout = createLayout()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.lblCellNumber.text = "\(indexPath.row + 1)"
        cell.layer.cornerRadius = 20
        
        return cell
    }
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.85), heightDimension: .fractionalHeight(1))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        section.orthogonalScrollingBehavior = .groupPagingCentered
        
        
        return UICollectionViewCompositionalLayout(section: section)
    }
    
}

