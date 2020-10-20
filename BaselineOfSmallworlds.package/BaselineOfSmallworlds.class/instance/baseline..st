baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			"Dependencies"
			self petitParser: spec.
			self bottlegram: spec.
			self neoCSV: spec.

			"Packages"
			spec
				package: 'Smallworlds' with: [ spec requires: #('PetitParser') ]; 
				package: 'Smallworlds-Bottlegram' with: [ spec requires: #('Smallworlds' 'Bottlegram') ];
				package: 'Smallworlds-WorldBuilder' with: [ spec requires: #('Smallworlds' 'NeoCSV') ]
			].