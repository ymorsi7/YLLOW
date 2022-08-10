

import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class Profile2Cell3: UICollectionViewCell {

	@IBOutlet var imageViewContent: UIImageView!
	@IBOutlet var viewMoreImages: UIView!
	@IBOutlet var labelImageCount: UILabel!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(index: Int, data: String) {

		imageViewContent.sample("Social", "Profiles", index + 5)
		if index == 2 {
			viewMoreImages.isHidden = false
			labelImageCount.text = "+\(data)"
		}
		else {
			viewMoreImages.isHidden = true
		}
	}
}
