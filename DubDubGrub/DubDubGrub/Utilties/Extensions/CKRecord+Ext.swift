//
//  CKRecord+Ext.swift
//  DubDubGrub
//
//  Created by Oliwia Michalak on 08/07/2022.
//

import CloudKit

extension CKRecord {
    func convertToDDGLocation() -> DDGLocation {
        DDGLocation(record: self)
    }

    func converttoDDGProfile() -> DDGProfile {
        DDGProfile(record: self)
    }
}
