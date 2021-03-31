Class {
	#name : #ListeChainee,
	#superclass : #Object,
	#instVars : [
		'tete'
	],
	#category : #ListesChainees
}

{ #category : #adding }
ListeChainee >> AjouterEnQueue: nouvelleValeur [
	|objElement|
	objElement:= Element new.
	objElement valeur: nouvelleValeur.
	objElement suivant: nil.
	
	" here I have to create a new empty list and loop items in old list;
	if item.next is not nill add it in new list 
	else add objElement as next 
	finally fill new list in old list 
	"
		
	tete := objElement.
]

{ #category : #adding }
ListeChainee >> AjouterEnTete: nouvelleValeur [
	|objElement|
	objElement:= Element new.
	objElement valeur: nouvelleValeur.
	objElement suivant: tete suivant.	
	tete := objElement.
]

{ #category : #accessing }
ListeChainee >> tete [
	^tete
]

{ #category : #accessing }
ListeChainee >> tete: objElement [
	tete:= objElement
]
