instance creation
newFromFile: aFileLocation
	^ self new
		fileLocation: aFileLocation;
		yourself