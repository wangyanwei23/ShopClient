import UIKit
import Foundation

extension UIButton {

    func setImageAndTitleLeft() {
        var spacing:CGFloat = 3.0
        var imageSize = self.imageView?.frame.size
        var titleSize = self.titleLabel?.frame.size
        var totalHeight = imageSize!.height + titleSize!.height + spacing

        self.imageEdgeInsets = UIEdgeInsetsMake(-(totalHeight - imageSize!.height), 0.0, 0.0, -titleSize!.width)
        self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize!.width, -(totalHeight - titleSize!.height), 0.0)
    }
}