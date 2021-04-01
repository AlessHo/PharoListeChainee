Class {
	#name : #ListeChainee,
	#superclass : #Object,
	#instVars : [
		'tete',
		'queue'
	],
	#category : #ListesChainees
}

{ #category : #adding }
ListeChainee >> AjouterEnQueue: nouvelleValeur [
	
	"Here we are creating a new element and setting the value inside"
	
	|objElement|
	
	objElement:= Element new.
	objElement valeur: nouvelleValeur.
	objElement suivant: nil. "suivant is nil since it is the last element"
	
	queue
		ifNil: [ tete := objElement.
					queue := objElement ]
		ifNotNil: [ queue suivant: objElement]
		"To insert at the end, the new Elemnt should become the next of existing last element" 
	
]

{ #category : #adding }
ListeChainee >> AjouterEnTete: nouvelleValeur [
	"The purpose of this methd is to add an Element in the begining of a list; it takes a value, creates a new Node and insert it in the begining."

	"here we are creating a new element to set the value inside"

	| objElement objNewTete|
	objElement := Element new.
	objElement valeur: nouvelleValeur.
	
	tete
		ifNil: [ tete := objElement.
					queue := objElement ]
		ifNotNil: [objNewTete := Element new.
					  objNewTete := tete.
					  tete := objElement. "setting new head"
					  tete suivant: objNewTete.] "linking the rest of the list to the new head"
		"To insert it in the begining, the next value of this element should be the head of the list" 
]

{ #category : #accessing }
ListeChainee >> queue [ 
	^queue
]

{ #category : #accessing }
ListeChainee >> queue: uneQueue [
	queue := uneQueue
]

{ #category : #accessing }
ListeChainee >> tete [
	^tete
]

{ #category : #accessing }
ListeChainee >> tete: objElement [
	tete:= objElement
]
