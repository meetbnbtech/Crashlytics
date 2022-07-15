//
//  ViewController.swift
//  FirebaseCrashlyticsProj
//
//  Created by Adsum MAC 1 on 12/08/21.
//

import UIKit
import FirebaseCrashlytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // See in Keys Section
//        let keysAndValues = [
//                         "user" : "meet@gmail.com",
//                         "user_id" : "1",
//                         "occupation" : "developer",
//                         "followers" : 33
//                        ] as [String : Any]
//        Crashlytics.crashlytics().setCustomKeysAndValues(keysAndValues)

        // See in Data Section
        Crashlytics.crashlytics().setUserID("3")

        // Customize Stack Trace
        let userInfo: [String: String] = [
            "deviceId": "someDeviceId",
            "localizedDescription": "yourException.localizedDescription",
            "anotherKey": "anotherValue"
        ]
        let domain = "GET: domain/app/version/api/endpoint"
        let code = 404
        let error = NSError(domain: domain, code: code, userInfo: userInfo)
        Crashlytics.crashlytics().record(error: error)

    }

    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        fatalError("Test Error")
     }
}

