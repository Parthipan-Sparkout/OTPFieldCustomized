//
//  CustomOTPTextfieldImplementation.swift
//  CustomOtpTextfield
//
//  Created by Sparkout on 17/03/23.
//

import Foundation
import UIKit

class CustomOTPTextFieldImplementation: NSObject, UITextFieldDelegate {
    weak var implementationDelegate: CustomOTPTextFieldImplementationProtocol?

    func textField(
        _ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String
    ) -> Bool {
        guard let characterCount = textField.text?.count else { return false }
        return characterCount < implementationDelegate?.digitalLabelsCount ?? 0 || string == ""
    }
}
