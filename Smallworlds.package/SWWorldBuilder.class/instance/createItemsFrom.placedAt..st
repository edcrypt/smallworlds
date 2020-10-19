as yet unclassified
createItemsFrom: matcher placedAt: aLocation
	| itemString |
	itemString := (matcher subexpression: 5).
	itemString isNotEmpty ifTrue: [ 
		"TODO create each item"
		aLocation add: (Item name: itemString) ]