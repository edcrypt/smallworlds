as yet unclassified
createWorld
	| locationRows |
	locationRows := self parseWorldFile.
	self connect: locationRows.
	^ world