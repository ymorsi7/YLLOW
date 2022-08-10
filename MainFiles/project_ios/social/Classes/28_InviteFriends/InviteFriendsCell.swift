
import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class InviteFriendsCell: UITableViewCell {

	@IBOutlet var imageUser: UIImageView!
	@IBOutlet var labelName: UILabel!
	@IBOutlet var labeluserid: UILabel!
	@IBOutlet var buttonInvite: UIButton!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(index: Int, data: [String: String]) {

		guard let name = data["name"] else { return }
		guard let userid = data["userid"] else { return }

		imageUser.sample("Social", "Work", index)
		labelName.text = name
		labeluserid.text = userid
	}
}
