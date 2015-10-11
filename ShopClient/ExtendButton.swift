import UIKit
import Foundation

extension UIButton {

    func setImageAndTitleLeft() {
        let spacing:CGFloat = 3.0
        let imageSize = self.imageView?.frame.size
        let titleSize = self.titleLabel?.frame.size
        let totalHeight = imageSize!.height + titleSize!.height + spacing

        self.imageEdgeInsets = UIEdgeInsetsMake(-(totalHeight - imageSize!.height), 0.0, 0.0, -titleSize!.width)
        self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize!.width, -(totalHeight - titleSize!.height), 0.0)
    }
}