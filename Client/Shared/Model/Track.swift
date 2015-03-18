//
//  Track.swift
//  Tracks
//
//  Created by Justin Rushing on 3/17/15.
//  Copyright © 2015 Justin Rushing. All rights reserved.
//

import Foundation

enum State {
    case Open
    case InProgress
    case Review
    case Prepare
    case Integrate
    case Verify
    case Closed
}

enum Priority {
    case Low
    case Medium
    case High
}

enum Resolution {
    case NotFixed
    case Fixed
    case WillNotFix
    case CannotReproduce
    case Duplicate(Track) // The track that this is a duplicate of
}

class Track {
    // MARK: lets
    let originator: User
    let creationDate: NSDate
    
    // MARK: Non-Optional vars
    var id: Int
    var title: String
    var summary: String
    var state: State = State.Open
    var lastModified: NSDate
    var priority: Priority = Priority.Low
    var discussion: [String] = []
    
    var subTasks: [Track] = []
    var superTask: Track?
    var relatedTasks: [Track] = []
    
    var previousAssignees: [User] = []
    
    // MARK: Optional vars
    var assignee: User?
    var qaAssignee: User?
    var reviewedBy: [User] = []
    
    // MARK: Init
    init(id: Int,
        title: String,
        summary: String,
        originator: User,
        creationDate: NSDate = NSDate())
    {
        self.title = title
        self.summary = summary
        self.originator = originator
        self.id = id
        self.creationDate = creationDate
        self.lastModified = NSDate()
    }
}
