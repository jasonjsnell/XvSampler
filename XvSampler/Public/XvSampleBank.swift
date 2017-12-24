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
    
    let debug:Bool = false

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
    
    //used to get a file for playback
    public var fileName:String? {
        get {
            
            if (_fileNames.count == 1){
                
                return _fileNames[0]
                
            } else if (_fileNames.count > 1){
                
                //multi sample, return random
                return _fileNames[Utils.getRandomInt(within: _fileNames.count)]
                
            } else {
                
                //no sample (midi track), return nil
                return nil
            }
        }
    }
    
    public var fileNames:[String] {
        get { return _fileNames }
        set { _fileNames = newValue }
    }
    
    //init with vital characteristic, which is the position of the sample bank. It is immutable and cannot properly function without it
    public init(position:Int){
        
        if (debug) { print("SAMPLE BANK: Init bank", position) }
        
        _position = position
        
    }
}
