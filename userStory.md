# User Stories to a Domain Model
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```
```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

| Objects | Messages |
|---------|-----------|
| person | username_display |
| person | ride_bike? |
| bike | works? |
| docking station | release_bike |

```
person <-- username_display --> username
person <-- ride_bike? --> true/false
bike <-- works? --> true/false
docking station <-- release_bike --> true/false
```
