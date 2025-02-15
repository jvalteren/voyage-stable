persistence
revert: anObject

	| objectClass id json |

	anObject isTypePersistent ifFalse: [ ^ anObject ].

	objectClass := anObject class.
	id := self keyOf: anObject.
	json := self readOneOperation 
		queryClass: objectClass;
		where: (Dictionary with: self fieldRootId -> id);
		basicSelectOne.

	^ self revertInstanceOf: objectClass serialized: json updating: anObject