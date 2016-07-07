1.*Objects	        
  1.Person
  2.Bike	             
  3.DockingStation	   
2.*Messages
  1.working?
  2.release_bike


Bike <-- working? --> true/false |
DockingStation <-- release_bike --> a Bike
