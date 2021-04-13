//
//  Extend.swift
//  ObjCSwift
//
//  Created by Don Mag on 4/13/21.
//

import UIKit

@objc public extension NSAttributedString {
	/**
	Initializes an `NSAttributedString` from a passed-in string
	*/
	convenience init?(html: String) {
		let stringWithLineBreaks = html.replacingOccurrences(of: "\n", with: "<br>")
		let htmlData = Data(stringWithLineBreaks.utf8)
		if let attributedString = try? NSAttributedString(data: htmlData, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
			self.init(attributedString: attributedString)
		} else {
			print("Failed to parse HTML into NSAttributedString")
			return nil
		}
	}
}
