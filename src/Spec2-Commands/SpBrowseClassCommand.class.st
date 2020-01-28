"
I browse a class that is returned from the evaluation of my context.
My context must be a block that returns a class.
"
Class {
	#name : #SpBrowseClassCommand,
	#superclass : #SpSystemNavigationCommand,
	#category : #'Spec2-Commands-Navigation'
}

{ #category : #default }
SpBrowseClassCommand class >> defaultIconName [
	^#smallSystemBrowser
]

{ #category : #default }
SpBrowseClassCommand class >> defaultName [

	^ 'Browse class'
]

{ #category : #default }
SpBrowseClassCommand class >> defaultShortcutKey [

	^ $b command mac 
		| $b control win
		| $b control unix
]

{ #category : #execution }
SpBrowseClassCommand >> execute [
	self context ifNotNil: [ :ctx | ctx browse ]
]