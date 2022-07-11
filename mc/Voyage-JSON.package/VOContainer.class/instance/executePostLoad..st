executing
executePostLoad: anObject
    self postLoad ifNotNil: [ :postLoadBlock | postLoadBlock value: anObject ].
    self children do: [ :each |
        each postLoad ifNotNil: [ each postLoad value: anObject ] ]