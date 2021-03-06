//
//  Sticker.swift
//  MessagesExtension
//
//  Created by Tomn on 09/09/2017.
//  Copyright © 2017 Thomas Naudet

//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.

//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.

//  You should have received a copy of the GNU General Public License
//  along with this program. If not, see http://www.gnu.org/licenses/
//

import Foundation
import Messages

/// Describes an iMessage sticker
struct Sticker: Decodable {
    
    /// Used for sorting
    let id: Int
    
    /// Name of the sticker (used for VoiceOver for instance)
    let name: String
    
    /// Address where it can be downloaded
    let img: URL
    
}

/// Describes a Stickers JSON response from API
struct StickersResult: APIResult, Decodable {
    
    let success: Bool
    
    /// List of available Stickers
    let stickers: [Sticker]
    
}


class RawSticker: MSSticker {
    
    /// Used for sorting
    let id: Int
    
    init(contentsOfFileURL fileURL: URL, localizedDescription: String, id: Int) throws {
        self.id = id
        try super.init(contentsOfFileURL: fileURL, localizedDescription: localizedDescription)
    }
    
}
