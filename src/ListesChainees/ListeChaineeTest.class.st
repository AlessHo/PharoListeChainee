Class {
	#name : #ListeChaineeTest,
	#superclass : #TestCase,
	#category : #ListesChainees
}

{ #category : #tests }
ListeChaineeTest >> testAjouterEnQueue [

|monElement maListe| "defining 2 params"

monElement := Element new. "creating new Element"
monElement valeur: 'A'. 
monElement suivant: nil.

maListe := ListeChainee new. "Creating list"
maListe tete: monElement. 

maListe AjouterEnQueue: 'B'. "adding new elemnt at the end"
self assert: maListe queue valeur equals: 'B' "checking if queue changed to value of new element since it is added in the End"
]

{ #category : #tests }
ListeChaineeTest >> testAjouterEnTete [

|monElement maListe| "defining 2 params"

monElement := Element new. "creating new Element"
monElement valeur: 2. 
monElement suivant: nil.

maListe := ListeChainee new. "Creating list"
maListe tete: monElement. 

maListe AjouterEnTete: 3. "adding new elemnt in  the begining"
self assert: maListe tete valeur equals: 3 "checking if head changed to value of new element since it is added in the begining."
]

{ #category : #tests }
ListeChaineeTest >> testCreatiionListeChainee [

|monElement maListe| "decaration of new params"

monElement := Element new. "Creating new Element"
monElement valeur: 2.
monElement suivant: nil.

maListe := ListeChainee new. "Creating new list"
maListe tete: monElement. "setting the head = new Element created"

self assert: maListe tete valeur equals: 2 "Testing head value"
]
