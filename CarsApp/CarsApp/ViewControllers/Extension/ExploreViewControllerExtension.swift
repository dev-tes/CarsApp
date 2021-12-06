//
//  ExploreViewControllerExtension.swift
//  CarsApp
//
//  Created by  Tes on 04/12/2021.
//

import UIKit
extension ExploreViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    class LeftPaddedTextField: UITextField {
        override func textRect(forBounds bounds: CGRect) -> CGRect {
            return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
        }
        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == brandCollectionView {
            return viewModel.count
        }
        else {
          return 15
        }
    }
    
    func populateCollectionView() {
        DataLoader.shared.pullJSONData { [weak self] data in
            self?.cars = data.makeList
            self?.viewModel = (self?.cars?.compactMap({
                BrandCollectionViewModel(
                    brandName: $0.name,
                    productImageURL: $0.imageUrl
                )
            }))!
                    
                DispatchQueue.main.async {
                    self?.brandCollectionView.reloadData()
                }
            }
        
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == brandCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BrandCollectionViewCell.identifier, for: indexPath) as? BrandCollectionViewCell else { return UICollectionViewCell() }
                cell.configure(with: viewModel[indexPath.row])
              cell.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
              cell.layer.cornerRadius = cell.frame.size.height/2
          return cell
        } else {
          
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.identifier, for: indexPath) as? MainCollectionViewCell else { return UICollectionViewCell() }
//          let url = URL(string: self.list?.result[indexPath.item].imageUrl ?? "")
//          dataLoader.pullListJSONData { data in
//            self.list = data
//            let imageUrlString = self.list?.result[indexPath.item].imageUrl ?? ""
            
            DispatchQueue.main.async {
//              cell.configure(with: imageUrlString)
//              cell.productNametextView.text =   self.list?.result[indexPath.item].title
//              cell.productBrandTextView.text =  self.list?.result[indexPath.item].sellingCondition
//              cell.productPriceTextView.text = self.list?.result[indexPath.item].mileageUnit
//
                cell.productImageView.image = UIImage(systemName: "house")
                cell.productNametextView.text =   "Textholder"
                cell.productBrandTextView.text =  "Textholder1"
                cell.productPriceTextView.text = "Textholder2"
                cell.backgroundColor = .yellow
              
            }
//          }
          return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      if collectionView == mainCollectionView {
          print("pCV")
      } else {
          print("Pcv")
      }
    }
}
