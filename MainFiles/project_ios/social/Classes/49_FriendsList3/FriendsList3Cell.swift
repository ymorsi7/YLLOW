

import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class FriendsList3Cell: UITableViewCell {

	@IBOutlet var imageUser: UIImageView!
	@IBOutlet var labelName: UILabel!
	@IBOutlet var imageVerified: UIImageView!
	@IBOutlet var labelWork: UILabel!
	@IBOutlet var labelLocation: UILabel!
	@IBOutlet var buttonAdd: UIButton!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(index: Int, data: [String: String]) {

		guard let name = data["name"] else { return }
		guard let work = data["work"] else { return }
		guard let location = data["location"] else { return }

		imageUser.sample("Social", "Profiles", index + 7)
		labelName.text = name
		labelWork.text = work
		labelLocation.text = location
	}
}
