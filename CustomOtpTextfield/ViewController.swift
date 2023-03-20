//
//  ViewController.swift
//  CustomOtpTextfield
//
//  Created by Sparkout on 17/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var otpTextfield: OTPTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        otpTextfield.otpDelegate = self
        otpTextfield.otpFont = UIFont.systemFont(ofSize: 18, weight: .semibold)
        otpTextfield.configure(with: 6)
    }

}

extension ViewController: CustomOTPTextFieldDelegate {
    func didUserFinishEnter(the code: String) {
        print(code)
        otpTextfield.resignFirstResponder()
    }
}

