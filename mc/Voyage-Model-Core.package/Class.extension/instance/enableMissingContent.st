*Voyage-Model-Core
enableMissingContent 

	self isVoyageRoot ifFalse: [ ^ self ].

	(self voyageRepository descriptionBuilder for: self) 
		enableMissingContent