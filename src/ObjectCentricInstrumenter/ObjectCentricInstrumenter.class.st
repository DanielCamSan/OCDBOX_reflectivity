Class {
	#name : #ObjectCentricInstrumenter,
	#superclass : #Object,
	#instVars : [
		'targetObject',
		'metalink',
		'methodNode'
	],
	#category : #ObjectCentricInstrumenter
}

{ #category : #'as yet unclassified' }
ObjectCentricInstrumenter >> halt: methodSelector for: anObject [

	targetObject := anObject.
	metalink := MetaLink new
		            metaObject: #object;
		            selector: #halt.
	targetObject link: metalink toMethodNamed: methodSelector
]

{ #category : #'as yet unclassified' }
ObjectCentricInstrumenter >> uninstall [

	metalink uninstall
]
