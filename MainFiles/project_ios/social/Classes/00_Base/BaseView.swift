

import UIKit
import CoreNFC

//-----------------------------------------------------------------------------------------------------------------------------------------------
class BaseView: UIViewController {

	@IBOutlet var tableView: UITableView!

	private var names: [String] = []

	//-------------------------------------------------------------------------------------------------------------------------------------------
	override func viewDidLoad() {

		super.viewDidLoad()
		title = "List of Views"

		navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)

		tableView.tableFooterView = UIView()

		names.append("Login1View")
		names.append("SignUp2View")
		names.append("Location1View")
		names.append("NotificationView")
		names.append("Feed2View")
		names.append("NotificationsView")
		names.append("InviteFriendsView")
		names.append("CameraRollView")
		names.append("Post1View")
		names.append("AddCommentView")
		names.append("Comments1View")
		names.append("AddPostView")
		names.append("FriendsList3View")
		names.append("PostOptionsView")
		names.append("Profile2View")
		names.append("Account1View")
        names.append("EditProfile1View")
        names.append("NFCRead")
       // names.append("NFCWrite")
	}
}

// MARK: - UITableViewDataSource
//-----------------------------------------------------------------------------------------------------------------------------------------------
extension BaseView: UITableViewDataSource {

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func numberOfSections(in tableView: UITableView) -> Int {

		return 1
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

		return names.count
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cell")
		if (cell == nil) { cell = UITableViewCell(style: .default, reuseIdentifier: "cell") }

		cell.textLabel?.text = "\(indexPath.row+1). " + names[indexPath.row]

		return cell
	}
}

// MARK: - UITableViewDelegate
//-----------------------------------------------------------------------------------------------------------------------------------------------
extension BaseView: UITableViewDelegate {

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

		tableView.deselectRow(at: indexPath, animated: true)

		switch names[indexPath.row] {

			case "Login1View":
				let login1View = Login1View()
				login1View.isModalInPresentation = true
				login1View.modalPresentationStyle = .fullScreen
				present(login1View, animated: true)


			case "SignUp2View":
				let signUp2View = SignUp2View()
				let navigation = NavigationController(rootViewController: signUp2View)
				navigation.isModalInPresentation = true
				navigation.modalPresentationStyle = .fullScreen
				present(navigation, animated: true)

			case "Location1View":
				let location1View = Location1View()
				navigationController?.pushViewController(location1View, animated: true)

			case "NotificationView":
				let notificationView = NotificationView()
				let navigation = NavigationController(rootViewController: notificationView)
				navigation.isModalInPresentation = true
				navigation.modalPresentationStyle = .fullScreen
				present(navigation, animated: true)

			case "Feed2View":
				let feed2View = Feed2View()
				let navController = NavigationController(rootViewController: feed2View)
				navController.modalPresentationStyle = .fullScreen
				present(navController, animated: true)

			case "NotificationsView":
				let notificationsView = NotificationsView()
				let navController = NavigationController(rootViewController: notificationsView)
				navController.modalPresentationStyle = .fullScreen
				present(navController, animated: true)

			case "InviteFriendsView":
				let inviteFriendsView = InviteFriendsView()
				navigationController?.pushViewController(inviteFriendsView, animated: true)

			case "CameraRollView":
				let cameraRollView = CameraRollView()
				let navController = NavigationController(rootViewController: cameraRollView)
				navController.modalPresentationStyle = .fullScreen
				present(navController, animated: true)

			case "Post1View":
				let post1View = Post1View()
				navigationController?.pushViewController(post1View, animated: true)



			case "AddCommentView":
				let addCommentView = AddCommentView()
				present(addCommentView, animated: true)

			case "Comments1View":
				let comments1View = Comments1View()
				navigationController?.pushViewController(comments1View, animated: true)


			case "AddPostView":
				let addPostView = AddPostView()
				let navController = NavigationController(rootViewController: addPostView)
				navController.modalPresentationStyle = .fullScreen
				present(navController, animated: true)



			case "FriendsList3View":
				let friendsList3View = FriendsList3View()
				navigationController?.pushViewController(friendsList3View, animated: true)


			case "PostOptionsView":
				let postOptionsView = PostOptionsView()
				present(postOptionsView, animated: true)



			case "Profile2View":
				let profile2View = Profile2View()
				navigationController?.pushViewController(profile2View, animated: true)



			case "Account1View":
				let account1View = Account1View()
				navigationController?.pushViewController(account1View, animated: true)



			case "EditProfile1View":
				let editProfile1View = EditProfile1View()
				navigationController?.pushViewController(editProfile1View, animated: true)

		
            case "NFCRead":
                let NFCReadView = NFCReadView()
                NFCReadView.isModalInPresentation = true
                NFCReadView.modalPresentationStyle = .fullScreen
                present(NFCReadView, animated: true)
            
            
            /*
            case "NFCWrite":
                let NFCWriteView = NFCWriteView()
                NFCWriteView.isModalInPresentation = true
                NFCWriteView.modalPresentationStyle = .fullScreen
                present(NFCWriteView, animated: true)

*/
			default:
				break
		}
	}
}
