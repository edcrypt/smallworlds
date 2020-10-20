I build Smallworlds game worlds.

I load a .tsv (tab separated data) to build the Locations of a game map.
I parse each cell to discover the player's initial location, closed connections, and items or actors found on each location.
I connect each location baaed on their distribution. To the left becomes #isEastOf: and bellow becomes #isSouthOf:.

TODO: refactor each responsability into a collaborator. 

- Create with class-side #newFromFile: (with a .tsv file path string as argument)
- Build world with #createWorld: (with a SmallWorld class as argument)
