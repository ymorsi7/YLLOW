
import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class Comments1Cell2: UITableViewCell {

	@IBOutlet var imageUserProfile: UIImageView!
	@IBOutlet var labelUserName: UILabel!
	@IBOutlet var labelDescription: UILabel!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(index: Int, data: [String: Any]) {

		guard let name = data["name"] as? String else { return }
		guard let comment = data["comment"] as? String else { return }

		imageUserProfile.sample("Social", "Profiles", index + 25)
		labelUserName.text = name
		labelDescription.text = comment
	}
}
