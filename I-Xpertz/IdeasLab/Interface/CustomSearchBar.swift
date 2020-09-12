//
//  CustomSearchBar.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 9/9/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

class CustomSearchBar: UISearchBar {

   override init(frame: CGRect) {
      super.init(frame: frame)
          setupSearchBar()
      }
      
      required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
      }
    
    private func setupSearchBar() {
        sizeToFit()
        
    }

}
