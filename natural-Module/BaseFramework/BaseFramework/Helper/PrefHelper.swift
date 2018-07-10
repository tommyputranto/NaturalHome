//
//  PrefHelper.swift
//  BaseFramework
//
//  Created by BRI on 09/07/18.
//  Copyright © 2018 Tommy. All rights reserved.
//

import Foundation

public struct PrefHelper {
    static let pref = UserDefaults.standard
    public static func saveObject(key:String ,value:AnyObject){
        let data = NSKeyedArchiver.archivedData(withRootObject: value)
        pref.set(data, forKey: key)
        commit()
    }
    
    public static func getObject(key:String)->AnyObject?{
        if let data = pref.object(forKey: key) as? NSData {
            let obj = NSKeyedUnarchiver.unarchiveObject(with: data as Data)!
            return obj as AnyObject?
        }
        return nil
    }
    
    public static func commit(){
        pref.synchronize()
    }
}

public extension UIView {
    
    public class func instantiateFromNib<T: UIView>(viewType: T.Type, bundle: Bundle) -> T {
        print("test \(self)")
        return (UINib(nibName: "\(self)", bundle: bundle).instantiate(withOwner: nil, options: nil).first as? T)!

    }
    
    public class func instantiateFromNib(bundle: Bundle) -> Self {
        return instantiateFromNib(viewType: self, bundle: bundle)
    }
}
