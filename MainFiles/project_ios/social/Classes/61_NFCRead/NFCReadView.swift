

import UIKit
import CoreNFC
//-----------------------------------------------------------------------------------------------------------------------------------------------
class NFCReadView: UIViewController, NFCNDEFReaderSessionDelegate {

    @IBOutlet weak var NFCText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    var nfcSession: NFCNDEFReaderSession?
    var word = "None"
    @IBAction func ScanBtn(  sender: Any){
        nfcSession = NFCNDEFReaderSession.init(delegate: self, queue: nil, invalidateAfterFirstRead: true)
        nfcSession?.begin()
    
}
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        print("The session was invalidated: \(error.localizedDescription)")
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        var result = ""
        for payload in messages[0].records{
            result += String.init(data: payload.payload.advanced(by: 3), encoding: .utf8) ?? "Format not supported"
        }
        DispatchQueue.main.async {
            self.NFCText.text = result
        }
    }
}
