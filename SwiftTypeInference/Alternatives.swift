//
//  Alternatives.swift
//  SwiftTypeInference
//
//  Created by S-Shimotori on 12/15/15.
//  Copyright © 2015 S-Shimotori. All rights reserved.
//

import Foundation
import Argo
/*
struct Alternatives {
    let args0: String
    let args1: String
    let args2: String
    let args3: String
    let args4: String
    let args5: String
    let args6: String
    //let args7: String

    static func create(args0: String)(args1: String)(args2: String)(args3: String)(args4: String)(args5: String)(args6: String)/*(args7: String)*/ -> Alternatives {
        return Alternatives(args0: args0, args1: args1, args2: args2, args3: args3, args4: args4, args5: args5, args6: args6)//, args7: args7)
    }
}

extension Alternatives: Decodable {
    static func decode(json: JSON) -> Decoded<Alternatives> {
        return create
            <^> json <| "args0" <|> json <| "args0_1"
            <*> json <| "args1" <|> json <| "args1_1"
            <*> json <| "args2" <|> json <| "args2_1"
            <*> json <| "args3" <|> json <| "args3_1"
            <*> json <| "args4" <|> json <| "args4_1"
            <*> json <| "args5" <|> json <| "args5_1"
            <*> json <| "args6" <|> json <| "args6_1"
            //<*> json <| "args7" <|> json <| "args7_1"
    }
}
*/