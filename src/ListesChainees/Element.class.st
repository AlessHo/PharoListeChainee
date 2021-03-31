Class {
	#name : #Element,
	#superclass : #Object,
	#instVars : [
		'valeur',
		'suivant'
	],
	#category : #ListesChainees
}

{ #category : #accessing }
Element >> suivant [
	^suivant
]

{ #category : #accessing }
Element >> suivant: objElement [
	suivant := objElement 
]

{ #category : #accessing }
Element >> valeur [
	^valeur
]

{ #category : #accessing }
Element >> valeur: nouvelleValeur [
	valeur := nouvelleValeur 
]
