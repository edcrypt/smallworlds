command
doTake: item

	(item hasAdjective: 'movable')
		ifTrue: [ 
			item owner remove: item.
			self pouch: item.
			^ 'You take ' , item noun showDefinite , ' .' ]
		ifFalse: [ ^ 'You can''t seem to pick up ' , item noun showDefinite ]