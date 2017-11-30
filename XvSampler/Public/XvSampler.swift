//
//  XvSampler.swift
//  XvSampler
//
//  Created by Jason Snell on 11/28/17.
//  Copyright © 2017 Jason J. Snell. All rights reserved.
//

import Foundation

public class XvSampler{
    
    // MARK: - VARS -
    
    
    
    fileprivate let debug:Bool = false
    
    //singleton code
    public static let sharedInstance = XvSampler()
    fileprivate init() {}
    
    //MARK: - ADD
    
    public func add(sampleBank:XvSampleBank) {
        SampleBanks.sharedInstance.add(sampleBank: sampleBank)
    }
    
    //MARK: - ACCESSORS
    public var sampleBankTotal:Int {
        get { return SampleBanks.sharedInstance.sampleBankTotal }
    }
    
    public var sampleBanks:[XvSampleBank] {
        get { return SampleBanks.sharedInstance.sampleBanks }
    }

    public func getSampleBank(fromPosition:Int) -> XvSampleBank? {
        return SampleBanks.sharedInstance.getSampleBank(fromPosition: fromPosition)  
    }

}
