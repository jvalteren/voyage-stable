*Voyage-Model-Core
version: anObject
	^ self isVoyageRoot 
		ifTrue: [ self voyageRepository versionAt: anObject voyageId ]
		ifFalse: [ 0 ] "VOCache returns version 0 when object is missing."