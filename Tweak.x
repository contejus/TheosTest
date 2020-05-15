/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.
*/
%hook SpringBoard

// Hooking an instance method with an argument.
- (void)applicationDidFinishLaunching:(id)application {
	%orig; // Call through to the original function with its original arguments.
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"This is a test tweak" 
                                                message:@"Give me pizza pls."
                                               delegate:self   
                                      cancelButtonTitle:@"No"                                                     
                                      otherButtonTitles:nil]; 
    [alert show];
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end

