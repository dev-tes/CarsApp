//
//  MainCollectionViewCell.swift
//  CarsApp
//
//  Created by  Tes on 04/12/2021.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    static let identifier = "MainCollectionViewCell"
    
    let productImageView: UIImageView = {
      let imageView = UIImageView()
      imageView.contentMode = .scaleAspectFit
      imageView.clipsToBounds = true
      imageView.layer.cornerRadius = 20
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let productNametextView: UILabel = {
      let textView = UILabel()
      textView.text = "Product Name"
      textView.font = UIFont.boldSystemFont(ofSize: 18)
      textView.font = UIFont(name: "NunitoSans-Bold", size: 18)
      textView.translatesAutoresizingMaskIntoConstraints = false
      return textView
    }()
    let productBrandTextView: UILabel = {
      let textView = UILabel()
      textView.text = "Brand"
      textView.font = UIFont.boldSystemFont(ofSize: 13)
      textView.font = UIFont(name: "NunitoSans-Regular", size: 13)
      textView.translatesAutoresizingMaskIntoConstraints = false
      return textView
    }()
    let productRateLabel: UILabel = {
      let textView = UILabel()
      textView.text = "(5.0)"
      textView.font = UIFont(name: "NunitoSans-Regular", size: 14)
      textView.translatesAutoresizingMaskIntoConstraints = false
      return textView
    }()
    let productRateView: UIImageView = {
      let imageView = UIImageView()
      imageView.contentMode = .scaleAspectFit
      imageView.clipsToBounds = true
      imageView.image = UIImage(named: "star")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let productPriceTextView: UILabel = {
      let textView = UILabel()
      textView.text = "$111.67"
      textView.font = UIFont.boldSystemFont(ofSize: 14)
      textView.font = UIFont(name: "NunitoSans-Semibold", size: 14)
      textView.translatesAutoresizingMaskIntoConstraints = false
      return textView
    }()
    let productImageV: UIImageView = {
      let view = UIImageView()
      view.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.97, alpha: 1.00)
      view.contentMode = .scaleAspectFit
      view.layer.cornerRadius = 15
      view.isUserInteractionEnabled = true
      view.translatesAutoresizingMaskIntoConstraints = false
      return view
    }()
    let productDetailsView: UIView = {
      let view = UIView()
      view.backgroundColor = .white
      view.layer.cornerRadius = 15
      view.isUserInteractionEnabled = true
      view.translatesAutoresizingMaskIntoConstraints = false
      return view
    }()
    lazy var addButton: UIButton = {
      let button = UIButton()
      button.layer.cornerRadius = 17
      button.backgroundColor = .black
      button.setTitleColor(.yellow, for: .normal)
      button.setTitle("+", for: .normal)
      button.translatesAutoresizingMaskIntoConstraints = false
      return button
    }()
}
