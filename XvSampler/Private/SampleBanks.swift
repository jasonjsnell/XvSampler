//
//  SampleBanks.swift
//  XvSampler
//
//  Created by Jason Snell on 11/28/17.
//  Copyright © 2017 Jason J. Snell. All rights reserved.
//

import Foundation

internal class SampleBanks {
    
    //singleton code
    public static let sharedInstance = SampleBanks()
    fileprivate init() {}
    
    //MARK: - VARS
    
    fileprivate var _sampleBanks:[XvSampleBank] = []
    internal var sampleBanks:[XvSampleBank] {
        get {return _sampleBanks}
    }
    
    internal var sampleBankTotal:Int {
        
        get { return _sampleBanks.count }
    }
    
    fileprivate let debug:Bool = true
    
    //MARK: Add
    internal func add(sampleBank:XvSampleBank){
        _sampleBanks.append(sampleBank)
        if (debug) { print("SAMPLE BANKS: Sample bank added, total =", _sampleBanks.count) }
    }
    
    
}
