

import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class Post1Cell2: UITableViewCell {

	@IBOutlet var imageUser: UIImageView!
	@IBOutlet var labelUser: UILabel!
	@IBOutlet var labelTime: UILabel!
	@IBOutlet var buttonMore: UIButton!
	@IBOutlet var labelDescription: UILabel!
	@IBOutlet var layoutConstraintDescriptionHeight: NSLayoutConstraint!
	@IBOutlet var labelLikeCount: UILabel!
	@IBOutlet var buttonReply: UIButton!
	@IBOutlet var buttonLike: UIButton!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(index: Int, data: [String: String]) {

		guard let name = data["name"] else { return }
		guard let time = data["time"] else { return }
		guard let comment = data["comment"] else { return }
		guard let likes = data["likes"] else { return }

		imageUser.sample("Social", "Profiles", index + 7)
		labelUser.text = name
		labelTime.text = time
		labelDescription.text = comment
		labelLikeCount.text = likes
	}
}
