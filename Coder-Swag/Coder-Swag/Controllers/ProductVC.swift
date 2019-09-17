//
//  ProductVC.swift
//  Coder-Swag
//
//  Created by Manar Laith on 9/9/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource {
  
    @IBOutlet weak var prouctCollections : UICollectionView!

    
    private (set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        prouctCollections.dataSource = self
        prouctCollections.delegate = self
    }
    func initProduct (category : Category) {
      products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
             cell.uppdateViews(product: product)
            return cell
        }else {
            return ProductCell()
        }
       
    
    }
    


}
