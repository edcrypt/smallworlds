initialization
initialize: dimension
	locationMatrix := Array2D new: dimension.
	locations := OrderedCollection new.
	"Place origin at center of matrix"
	self origin: (dimension//2)@(dimension//2).
	self bounds: dimension@dimension