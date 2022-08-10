
import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class Feed2Cell3: UICollectionViewCell {

	@IBOutlet var imageViewProfile: UIImageView!
	@IBOutlet var labelName: UILabel!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(index: Int, data: String) {

		imageViewProfile.sample("Social", "Profiles", index)
		labelName.text = data
	}
}
