# HY_DelegatePattern
Key Steps to Delegation
The delegation design pattern has long been a core competency for Cocoa programmers. This remains the case with the arrival of Swift. Regardless of whether you are using Objective-C or Swift the basic steps to use delegation are the same:

Create a delegate protocol that defines the responsibilities of the delegate.
Create a delegate property in the delegating class to keep track of the delegate.
Adopt and implement the delegate methods in the delegate class.
Call the delegate from the delegating object.
Note that there are a couple of differences between Swift and Objective-C support for delegates:

Swift allows protocols to be used by classes, structs or enums. In Objective-C we are limited to classes. This changes whether we use reference semantics (classes) or value semantics (structs and enums) for the delegate.
Objective-C supports optional protocol methods. Swift only allows optional protocol requirements if you mark the protocol with the @objc attribute. If you use @objc you can then only use the protocol with class types.
