Delegation
==========

A simple example of a drawer view with a custom delegate protocol.

##Steps for creating a custom delegate

###Step 1: Define the delegate protocol
- Add @protocol and the name of the protocol below your imports
- Add the delegate as a ```@property (nonatomic, assign) id<DelegateName>delegate;```
- Define the protocol below the @end of the interface for the class
- Note: A delegate protocol typically sends the object as a parameter in the delegate message

###Step 2: Adopt the protocol (and set the property)
- At the top of your viewController (or whatever is adopting the delegate protocol) add <DelegateName> to the interface
- Add the required methods, and any optional methods you want to implement
- Be sure then when the object is initialized that you're setting the delegate property

###Step 3: Call the delegate methods
- From the class that defines the protocol you'll call the delegate method
- Note: For example, if a button in a tableViewCell is pressed, or a textField in a custom UIView subclass is edited
