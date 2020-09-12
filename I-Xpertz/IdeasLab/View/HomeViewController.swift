//
//  OnboardingViewController.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 8/13/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    weak var delegate: HomeViewDelegate?
    var searchBar = CustomSearchBar()
    fileprivate let collectionView: UICollectionView = {
           let layout = UICollectionViewFlowLayout()
               layout.scrollDirection = .vertical
           let cView = UICollectionView(frame: .zero, collectionViewLayout: layout)
           cView.translatesAutoresizingMaskIntoConstraints = false
           cView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
           return cView
    }()
    fileprivate let data = [
        CustomData(title: "Kanji", url: "unsplash.com/Kanji", backgroundImage: #imageLiteral(resourceName: "1")),
        CustomData(title: "Deep Summer Horizon", url: "unsplash.com/Deep-Summer-Horizon", backgroundImage: #imageLiteral(resourceName: "2")),
        CustomData(title: "Patterns", url: "unsplash.com/Patterns", backgroundImage: #imageLiteral(resourceName: "7")),
        CustomData(title: "Night Race", url: "unsplash.com/Night-Race", backgroundImage: #imageLiteral(resourceName: "8")),
        CustomData(title: "Strings", url: "unsplash.com/Strings", backgroundImage: #imageLiteral(resourceName: "5"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Components.standardBlue
        collectionView.delegate = self
        collectionView.dataSource = self
       
       
        
    }
    
    override func viewDidLayoutSubviews() {
             super.viewDidLayoutSubviews()
             setNavBar()
         layoutCollectionView()
         }
    
    
    
    private func setNavBar() {
             
             let navBar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: view.frame.size.width, height: 50))
             navBar.prefersLargeTitles = true
             navBar.translatesAutoresizingMaskIntoConstraints = true
                   view.addSubview(navBar)
             
             let navItem = UINavigationItem(title: "HOME")
             let searchItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(search))
        let clear = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(clearBadges))
        let menu = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(openMenu))
             
             navItem.leftBarButtonItem = menu
             navItem.rightBarButtonItems = [searchItem,clear]
             navBar.setItems([navItem], animated: false)
             navBar.tintColor = .black
             navBar.backgroundColor = .white
         
         }
    
   
    
    private func layoutCollectionView() {
        
        let margins = self.view.layoutMarginsGuide
        collectionView.backgroundColor = Components.standardBlue
        collectionView.layer.cornerRadius = 20
        
        view.addSubview(collectionView)
       
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 110),
            collectionView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 40),
            collectionView.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -40),
            collectionView.bottomAnchor.constraint(equalTo: margins.bottomAnchor)
        ])
    }

}

extension HomeViewController {
    
    @objc func search() {
              print("searching!!!!!")
          }
    
    @objc func clearBadges() {
        Components.badgeValue = nil
    }
    
    @objc func openMenu() {}
          
}

extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.width * 0.75)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.backgroundColor = .white
        cell.data = self.data[indexPath.row]
        return cell
    }
    
    
}





