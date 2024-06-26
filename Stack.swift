//
//  Stack.swift
//  DSA
//
//  Created by Abdul  Yasin on 10/05/24.
//

import Foundation

public struct Stack<T> {
    
    private var items: [T]
    
    public init(items: [T] = [T]()) {
        self.items = items
    }
    
    public mutating func push(item: T) {
        self.items.append(item)
    }
    
    @discardableResult
    public mutating func pop() -> T? {
        guard !self.items.isEmpty else {return nil}
        return self.items.popLast()
    }
    
    @discardableResult
    public func topElement() -> T? {
        self.items.last
    }
    
    public var isEmpty: Bool {
        self.items.count == 0
    }
    
    public var count: Int {
        self.items.count
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return ""
//        return self.items.map({
//            $0
//        })
    }
}





// IMPLEMENTATION

class StackImpl {
    func test() {
        var  stackExample: Stack<Int> = Stack(items: [0,1])
        stackExample.push(item: 10)
        stackExample.push(item: 100)
        stackExample.pop()
        stackExample.topElement()
        
        print(stackExample.description)
    }
}



