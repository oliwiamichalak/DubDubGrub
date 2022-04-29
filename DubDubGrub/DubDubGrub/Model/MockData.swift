//
//  MockData.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 29/04/2022.
//

import CloudKit

struct MockData {
    
    static var location: CKRecord {
        let record = CKRecord(recordType: "DDGLocation")
        record[DDGLocation.kName] = "Bob's Bar and Grill"
        record[DDGLocation.kAddress] = "123 Main Street"
        record[DDGLocation.kDescription] = "This is a test decription. Isn't it awesome. Not sure how long to make it to test the 3 lines."
        record[DDGLocation.kWebsiteURL] = "https://seanallen.co"
        record[DDGLocation.kLocation] = CLLocation(latitude: 51.47680774256474, longitude: -3.1796546729978608)
        record[DDGLocation.kPhoneNumber] = "111-111-1111"
        
        return record
    }
}

