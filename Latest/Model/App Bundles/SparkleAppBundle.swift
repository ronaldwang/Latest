//
//  SparkleAppUpdate.swift
//  Latest
//
//  Created by Max Langer on 07.04.17.
//  Copyright © 2017 Max Langer. All rights reserved.
//

import Cocoa

/**
 Sparkle subclass of the app bundle. This handles the parsing of the sparkle feed.
 */
class SparkleAppBundle: AppBundle {
    
	/// Provide Sparkle specifig update method.
    override func update() {
		UpdateQueue.shared.addOperation(SparkleUpdateOperation(app: self))
	}
	
}
