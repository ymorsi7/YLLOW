

import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class NotificationsCell: UITableViewCell {

	@IBOutlet var viewLeft: UIView!
	@IBOutlet var imageLeft: UIImageView!
	@IBOutlet var imageViewProfile: UIImageView!
	@IBOutlet var labelName: UILabel!
	@IBOutlet var imageVerified: UIImageView!
	@IBOutlet var labelTime: UILabel!
	@IBOutlet var labelDescription: UILabel!
	@IBOutlet var buttonFollow: UIButton!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	override func awakeFromNib() {

		super.awakeFromNib()
		viewLeft.layer.borderWidth = 1
		viewLeft.layer.borderColor = AppColor.Border.cgColor
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(index: Int, data: [String: String]) {

		guard let name = data["name"] else { return }
		guard let time = data["time"] else { return }
		guard let description = data["description"] else { return }

		imageViewProfile.sample("Social", "Profiles", index + 9)
		labelName.text = name
		labelTime.text = time
		labelDescription.text = description
	}
}
