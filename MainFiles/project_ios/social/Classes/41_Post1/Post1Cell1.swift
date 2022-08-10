

import UIKit

//-----------------------------------------------------------------------------------------------------------------------------------------------
class Post1Cell1: UITableViewCell {

	@IBOutlet var imageMusic: UIImageView!
	@IBOutlet var labelMusic: UILabel!
	@IBOutlet var labelArtist: UILabel!
	@IBOutlet var labelTime: UILabel!
	@IBOutlet var buttonMore: UIButton!

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(data: [String: String]) {

		guard let music = data["music"] else { return }
		guard let artist = data["artist"] else { return }
		guard let time = data["time"] else { return }

		labelMusic.text = music
		labelArtist.text = artist
		labelTime.text = time
	}
}
