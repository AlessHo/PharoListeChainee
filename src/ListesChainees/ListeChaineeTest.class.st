Class {
	#name : #ListeChaineeTest,
	#superclass : #TestCase,
	#category : #ListesChainees
}

{ #category : #tests }
ListeChaineeTest >> testAjouterEnTete [

|monElement maListe|
monElement := Element new.
monElement valeur: 2.
monElement suivant: nil.

maListe := ListeChainee new.
maListe tete: monElement.

maListe AjouterEnTete: 3.
self assert: maListe tete valeur equals: 3
]

{ #category : #tests }
ListeChaineeTest >> testCreatiionListeChainee [

|monElement maListe|
monElement := Element new.
monElement valeur: 2.
monElement suivant: nil.

maListe := ListeChainee new.
maListe tete: monElement.


self assert: maListe tete valeur equals: 2
]
