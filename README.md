# Boris Bikes
This is week#1 project from Makers Academy. This challenge script allows you to run all the Docking Stations, simulate all the Bikes, and emulate all the infrastructure (vans, repair staff, and so on) required to make their dream a reality.

## User Stories
**Feature#1:** Release a working Bike from a DockingStation. A new DockingStation should start empty.
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```
**Feature#2:** Return a Bike to a DockingStation and view docked Bikes

```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```

## Functional Representation of User Stories
objects|Messages|
-------|--------|
Person|
DockingStation| release_bike, dock(bike)
Bike| working?


## Digram
Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
