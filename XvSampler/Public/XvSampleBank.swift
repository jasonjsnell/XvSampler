//
//  XvSampleBank.swift
//  XvSampler
//
//  Created by Jason Snell on 11/28/17.
//  Copyright © 2017 Jason J. Snell. All rights reserved.
//

import Foundation

// Equatable. Allows tracks to be compared with each other and found in arrays. Swift v 2.0
public func == (lhs: XvSampleBank, rhs: XvSampleBank) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}

open class XvSampleBank:Equatable {

    fileprivate var _position:Int
    public var position:Int {
        get { return _position }
    }
    
    fileprivate var _active:Bool = true
    public var active:Bool {
        get { return _active }
        set { _active = newValue }
    }
    
    fileprivate var _abbreviatedName:String = ""
    public var abbreviatedName:String {
        get { return _abbreviatedName }
        set { _abbreviatedName = newValue }
    }
    
    fileprivate var _displayName:String = ""
    public var displayName:String {
        get { return _displayName }
        set { _displayName = newValue }
    }
    
    fileprivate var _fileNames:[String] = []
    public var fileNames:[String] {
        get { return _fileNames }
        set { _fileNames = newValue }
    }
    
    //init with vital characteristic, which is the position of the sample bank. It is immutable and cannot properly function without it
    public init(position:Int){
        
        print("Init sample bank", position)
        
        _position = position
        
    }
}
