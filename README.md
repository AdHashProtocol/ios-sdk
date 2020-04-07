# AdHash iOS SDK

# How to setup AdHash
#### 1. Install pod 'ios-sdk'
#### 2. Conform your UIView to AdHashView
#### 3. Configure AdHashManager in AppDelegate file:
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    	let config = AdHashConfig(publisherID: "0x9e0fa4b9a910d25d3a92102dfe4ca0079031a6d4",
    	  analyticsURL: "https://adhash.org/p/sdk/data.php",
    	  bidderURL: "https://bidder.adhash.org/protocol.php?action=click",
    	  publisherURL: "https://publisher.com/protocol.php?action=click",
    	  reportURL: "https://adhash.org/p/sdk/protocol.php?action=report_sdk",
    	  apiVersion: 1.0)
    	AdHashManager.setConfig(config)
    	return true
    }
#### 4. Setup your ViewController:
    import UIKit
    import AdHash_iOS

    final class ViewController: UIViewController, AdHashViewDelegate {

    	@IBOutlet weak var banner: AdHashView!

    	override func viewDidLoad() {
    		super.viewDidLoad()
    		AdHashManager.bannerWidth = 300
    		AdHashManager.bannerHeight = 250
    		banner.adTagId = "AdID"
    		banner.delegate = self
    	}

    	func didClickOnAd(adId: String) {
    		print("Tapped on ad with bannerID: \(adId)")
    	}

    	func didClickOnReport(adId: String) {
    		print("Tapped on report with bannerID: \(adId)")
    	}

    }

 ___

##### All configurable parameters:
| Property name  |  Type |
| ------------ | ------------ |
| timeZone | Int |
| location | String  |
| publisherID  | String  |
| screenWidth  |  CGFloat |
|  screenHeight |  CGFloat |
| platform  |  String |
|  language |  String |
| model  | String |
| type  | String  |
| connection  | String  |
|  isp | String  |
|  orientation | String  |
|  gps | String  |
| bannerWidth  |  CGFloat |
| bannerHeight  |  CGFloat |
| blockedAdvertisers  | [String]  |
| currentTimestamp  |  String |
| recentAds  |  [[Any]]  |
| apiVersion  | Float  |
| analyticsURL |  String |
| analyticsScreenShotURL  | String  |
|  bidderURL |  String |
|  publisherURL | String  |
|  reportURL | String  |

#### Available delegate methods:
    func didClickOnAd(adId: String)
    func didClickOnReport(adId: String)
