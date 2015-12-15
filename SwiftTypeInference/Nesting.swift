//
//  Nesting.swift
//  SwiftTypeInference
//
//  Created by S-Shimotori on 12/15/15.
//  Copyright © 2015 S-Shimotori. All rights reserved.
//

import Foundation
import Argo

struct Nesting {
    struct Nested {
        let args0: String
        let args1: String

        static func create(args0: String)(args1: String) -> Nested {
            return Nested(args0: args0, args1: args1)
        }
    }

    let args0: Nested
    let args1: Nested
    let args2: Nested
    let args3: Nested
    let args4: Nested
    let args5: Nested
    //let args6: Nested

    static func create(args0: Nested)(args1: Nested)(args2: Nested)(args3: Nested)(args4: Nested)(args5: Nested)/*(args6: Nested)*/ -> Nesting {
        return Nesting(args0: args0, args1: args1, args2: args2, args3: args3, args4: args4, args5: args5)//, args6: args6)
    }
}

extension Nesting.Nested: Decodable {
    static func decode(json: JSON) -> Decoded<Nesting.Nested> {
        return create
            <^> json <| "args0"
            <*> json <| "args1"
    }
}

extension Nesting: Decodable {
    static func decode(json: JSON) -> Decoded<Nesting> {
        return create
            <^> (Nesting.Nested.create <^> json <| ["nested0", "args0"] <*> json <| ["nested0", "args1"])
            <*> (Nesting.Nested.create <^> json <| ["nested1", "args0"] <*> json <| ["nested1", "args1"])
            <*> (Nesting.Nested.create <^> json <| ["nested2", "args0"] <*> json <| ["nested2", "args1"])
            <*> (Nesting.Nested.create <^> json <| ["nested3", "args0"] <*> json <| ["nested3", "args1"])
            <*> (Nesting.Nested.create <^> json <| ["nested4", "args0"] <*> json <| ["nested4", "args1"])
            <*> (Nesting.Nested.create <^> json <| ["nested5", "args0"] <*> json <| ["nested5", "args1"])
            //<*> (Nesting.Nested.create <^> json <| ["nested6", "args0"] <*> json <| ["nested6", "args1"])

    }
}
