//
//  TextFieldWithIcon.swift
//  FlexNet
//
//  Created by Yuyang Ji on 27/4/2023.
//

import UIKit

class TextFieldWithIcon: UITextField {

    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 300, height: 55))
        
        clearButtonMode = .whileEditing
        translatesAutoresizingMaskIntoConstraints = false
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 15
        layer.masksToBounds = true
        leftViewMode = .always
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addIcon(icon : UIImage){
        let padding :CGFloat = 12
        let iconSize : CGFloat = 25
        
        let iconContainer = UIView(frame: CGRect(x: 0, y: 0, width: iconSize + padding, height: iconSize))
        let iconView = UIImageView(image: icon)
        iconView.tintColor = .gray
        iconView.contentMode = .scaleAspectFit
        iconView.frame = CGRect(x: padding/2, y: 0, width: iconSize, height: iconSize)
        iconContainer.addSubview(iconView)
        leftView = iconContainer
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
