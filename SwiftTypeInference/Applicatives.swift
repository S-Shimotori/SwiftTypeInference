//
//  Applicatives.swift
//  SwiftTypeInference
//
//  Created by S-Shimotori on 12/15/15.
//  Copyright © 2015 S-Shimotori. All rights reserved.
//

import Foundation
import Argo

struct Applicatives {
    let args0: String
    let args1: String
    let args2: String
    let args3: String
    let args4: String
    let args5: String
    let args6: String
    let args7: String
    let args8: String
    let args9: String
    let args10: String
    let args11: String
    let args12: String
    let args13: String
    //let args14: String

    static func create(args0: String)(args1: String)(args2: String)(args3: String)(args4: String)(args5: String)(args6: String)(args7: String)(args8: String)(args9: String)(args10: String)(args11: String)(args12: String)(args13: String)/*(args14: String)*/ -> Applicatives {
        return Applicatives(args0: args0, args1: args1, args2: args2, args3: args3, args4: args4, args5: args5, args6: args6, args7: args7, args8: args8, args9: args9, args10: args10, args11: args11, args12: args12, args13: args13)//, args14: args14)
    }
}

extension Applicatives: Decodable {
    static func decode(json: JSON) -> Decoded<Applicatives> {
        return create
            <^> json <| "args0"
            <*> json <| "args1"
            <*> json <| "args2"
            <*> json <| "args3"
            <*> json <| "args4"
            <*> json <| "args5"
            <*> json <| "args6"
            <*> json <| "args7"
            <*> json <| "args8"
            <*> json <| "args9"
            <*> json <| "args10"
            <*> json <| "args11"
            <*> json <| "args12"
            <*> json <| "args13"
            //<*> json <| "args14"
    }
}
