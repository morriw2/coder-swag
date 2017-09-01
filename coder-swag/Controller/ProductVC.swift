//
//  ProductVC.swift
//  coder-swag
//
//  Created by Billy Morris on 8/31/17.
//  Copyright © 2017 Billy Morris. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var products = [Product]()
    
    @IBOutlet weak var collecionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collecionView.delegate = self
        collecionView.dataSource = self
    }
    
    func initProducts(category: Category) {
        products = Dataservice.instance.getProducts(forCategory: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
    
    
}
