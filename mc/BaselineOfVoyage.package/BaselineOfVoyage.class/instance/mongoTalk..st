external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://jvalteren/mongotalk-stable:develop';
			loads: #( 'Client Core' ) ];
		import: 'MongoTalk'
