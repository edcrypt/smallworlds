baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			"Dependencies"
			self petitParser: spec.
			self bottlegram: spec.

			"Packages"
			spec
				package: 'Smallworlds' with: [ spec requires: #('PetitParser') ]; 
				package: 'Smallworlds-Bottlegram' with: [ spec requires: #('Bottlegram') ] 
			].