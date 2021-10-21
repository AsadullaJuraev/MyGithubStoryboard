//
//  loadImgfromUrl.swift
//  MyGithubStoryboard
//
//  Created by Asadulla Juraev on 21/10/21.
//

import Foundation
import UIKit


extension UIImageView{
    func loadUrl(url: URL){
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data){
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
