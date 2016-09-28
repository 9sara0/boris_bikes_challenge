# Boris Bikes
This is week#1 project from Makers Academy. This challenge script allows you to run all the Docking Stations, simulate all the Bikes, and emulate all the infrastructure (vans, repair staff, and so on) required to make their dream a reality.

## User Stories
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

## Functional Representation of User Stories
objects|Messages|
-------|--------|
Person|
DockingStation| release_bike
Bike| working?


## Digram 
Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
