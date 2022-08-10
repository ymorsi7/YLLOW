
import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class Feed2Cell2: UICollectionViewCell {

	@IBOutlet var imageViewAdd: UIImageView!
	@IBOutlet var labelTitle: UILabel!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(data: String) {

		labelTitle.text = data
	}
}
