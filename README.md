# Boris Bikes
This is week#1 project from Makers Academy. This challenge script allows you to run all the Docking Stations, simulate all the Bikes, and emulate all the infrastructure (vans, repair staff, and so on) required to make their dream a reality.

## User Stories
**Feature#1:** Release a working Bike from a DockingStation
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```
**Feature#2:** Return a Bike to a DockingStation and view docked Bikes

```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
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
