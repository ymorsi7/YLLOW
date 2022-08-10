
import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class CameraRollCell2: UICollectionViewCell {

	@IBOutlet var imageGallery: UIImageView!
	@IBOutlet var imageSelected: UIImageView!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(index: Int) {

		imageGallery.sample("Social", "Party", index)
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func setSelected(_ selected: Bool) {

		imageSelected.isHidden = !selected
	}
}
