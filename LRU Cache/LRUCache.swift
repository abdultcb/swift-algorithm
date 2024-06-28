import UIKit

/**
 LRUCache Swift Implementation
 
 We will be using two data structures. Linked list and Hash Table
 
 The idea is very basic, i.e. keep inserting the elements at the head.

 - if the element is not present in the list then add it to the head of the list
 - if the element is present in the list then move the element to the head and shift the remaining element of the list
 */

public class LinkedListNode<Key: Hashable, Value> {
    let key: Key
    var value: Value
    
    var next: LinkedListNode?
    var previous: LinkedListNode?
    
    init(key: Key, value: Value) {
        self.key = key
        self.value = value
    }
    
    func updateValue(_ newValue: Value) {
        self.value = newValue
    }
}

extension LinkedListNode: Equatable {
    public static func == (lhs: LinkedListNode, rhs: LinkedListNode) -> Bool {
        return lhs.key == rhs.key
    }
}

public class LinkedList<Key: Hashable, Value> {
    typealias Node = LinkedListNode<Key, Value>
    
    var head: Node?
    var tail: Node?
    var count = 0
    var isEmpty: Bool { count == 0 }
    
    func addNode(_ node: Node) {
        if let head = head {
            head.previous = node
            node.next = head
        }
        
        if tail == nil {
            tail = node
        }
        
        head = node
        count += 1
    }
    
    func removeNode(_ node: Node) {
        // Setp: 1 - remove this node
        node.previous?.next = node.next
        node.next?.previous = node.previous
        
        if node == tail {
            tail = node.previous
        }
        
        if node == head {
            head = node.next
        }
        
    }
    
    func moveToHead(_ node: Node) {
        removeNode(node)
        addNode(node)
    }
    
    @discardableResult
    func removeLeastRecentlyUsed() -> Key? {
        if let tail = tail {
            let key = tail.key
            removeNode(tail)
            return key
        }
        return nil
    }
}


public class LRUCache<Key: Hashable, Value> {
    typealias Node = LinkedListNode<Key, Value>

    let capacity: Int
    var cache: [Key : Node] = [:]
    var list: LinkedList<Key, Value> = LinkedList()
    
    init(capacity: Int) {
        self.capacity = capacity
        self.cache = [:]
    }
    
    func read(_ key: Key) -> Value? {
        guard let node = cache[key] else {return nil}
        list.moveToHead(node)
        return node.value
    }
    
    func write(_ key: Key, value: Value) {
        // Update if exists else add new entry
        
        if let node = cache[key] {
            // Update
            node.updateValue(value) // Update with latest value
            list.moveToHead(node)
        } else {
            // New Entry
            let node = Node(key: key, value: value)
            list.addNode(node)
            cache[key] = node
            
            // Capacity Overloading
            if capacity < list.count {
                if let key = list.removeLeastRecentlyUsed() {
                    cache[key] = nil
                }
            }
        }
    }
        
}


let cache: LRUCache<String, Int> = LRUCache(capacity: 2)
cache.read("1")
cache.write("2", value: 2)
cache.write("3", value: 3)
cache.read("3")
cache.write("2", value: 2)
cache.read("3")
cache.write("4", value: 4)
print(cache.cache.keys)


