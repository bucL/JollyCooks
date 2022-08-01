//
//  UIDevice+Extension.swift
//  JollyCooks
//
//  Created by Phillip Shen on 31/7/2022.
//  The var modelName allows us to convert the device identifier name like Ipad13,17 to its common name which is iPad Air 5th Gen. The struct at the top allows us to use the Bundle+Extension file to decode the devicemodels json file and at the bottom of modelName var it returns matching results from the array DeviceModel. 

import UIKit
extension UIDevice{
    struct DeviceModel: Decodable {
        let identifier: String
        let model: String
        static var all: [DeviceModel]{
            Bundle.main.decode([DeviceModel].self, from: "DeviceModels.json")
        }
    }
    //This extensio allows us to find the raw name of the device model and return base of the Devicemodels json file, its common name.
    var modelName: String {
        #if targetEnvironment(simulator)
        let identifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"]!
        #else
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        #endif
        return DeviceModel.all.first {$0.identifier == identifier }?.model ?? identifier
    }
}
