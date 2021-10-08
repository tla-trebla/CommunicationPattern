# CommunicationPattern
This tutorial based on video with title Swift Delegate Protocol Pattern Tutorial - iOS Communication Patterns Part 1 by Sean Allen. 
Link: https://youtu.be/DBWu6TnhLeY

## What I've Learned
* Delegate Pattern are one-to-one communication.
* Notification Pattern are one-to-many communication.
* Assume the Boss is the View Controller that knows what information to show and what to do.
* Whle the Intern is only get information from the Boss.
* In Boss View Controller, we create the protocol with list of behaviors we want inside of it.
* Create the variable with type of Protocol we made before.
* We call the delegate function's from the Boss View Controller from the variable.
* Intern needs to call variable with type of protocol and assign it as self.
* Then it needs to conform the type of Protocol (best practice conform it at the extensions of the View Controller).
* Write the implementation with parameter from Boss View Controller.
