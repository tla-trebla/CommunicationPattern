# CommunicationPattern
This tutorial is based on video named Swift Observer & Notification Pattern Tutorial - iOS Communication Patterns Part 2 by Sean Allen.
Link: https://youtu.be/srqiDnLEocA

## Things I've Learned

* Notification Pattern is one-to-many communication.
* Create a global constant for creating a unique Notification's key (best name it just as naming a bundle identifier).
* The global Notification's keys used for one-communication for calling the listener.
* While the to-many communication used Notification's Key for the observers listening & do the implementation of it.
* Notification should remove observers from `deinit` when the user isn't at that View to stop the listeners listening.
* Notification Pattern can be messy if there's bunch of Notification's observers listening.
