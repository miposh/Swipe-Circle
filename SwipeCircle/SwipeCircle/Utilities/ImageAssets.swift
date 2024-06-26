import UIKit
import SpriteKit

struct ImageAsset: RawRepresentable {
    
    typealias RawValue = String
    let rawValue: String
    
    init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    // MARK: - Main View Images
    
    static let mainScreenBackground = ImageAsset(rawValue: "BGImage")
    static let mainScreenPlayButton = ImageAsset(rawValue: "PlayNowButtonImage")
    static let mainScreenPrivacyButton = ImageAsset(rawValue: "PrivacyButtonImage")
    static let mainScreenDoodletoon = ImageAsset(rawValue: "DoodletoonImage")
    
    // MARK: – Loading View Images
    
    static let loadingScreenBackground = ImageAsset(rawValue: "BGImage")
    static let loadingScreenCircle = ImageAsset(rawValue: "loadingCircleImage")
    static let loadingScreenText = ImageAsset(rawValue: "loadingTextImage")

}

