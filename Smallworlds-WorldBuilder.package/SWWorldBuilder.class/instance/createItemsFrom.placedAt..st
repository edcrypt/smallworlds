as yet unclassified
createItemsFrom: matcher placedAt: aLocation
	| itemString |
	itemString := (matcher subexpression: 5).
	itemString isNotEmpty ifTrue: [ 
		itemString splitOn: ' ' do: [ :each |
			aLocation add: (Item name: 
				(each trimLeft: [ :char | char = $$ or: [ char isSpaceSeparator ] ] 
				      right: [ :char | char isSpaceSeparator ])
				) ] ]