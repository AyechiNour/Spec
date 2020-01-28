"
I browse all methods containing a string returned by the computed context.
"
Class {
	#name : #SpBrowseMethodsContainingStringCommand,
	#superclass : #SpSystemNavigationCommand,
	#category : #'Spec2-Commands-Navigation'
}

{ #category : #defaults }
SpBrowseMethodsContainingStringCommand class >> defaultIconName [
	^#smallSystemBrowser 
]

{ #category : #default }
SpBrowseMethodsContainingStringCommand class >> defaultName [

	^ 'Browse methods containing string'
]

{ #category : #executing }
SpBrowseMethodsContainingStringCommand >> execute [
	self systemNavigation browseMethodsWithSourceString: self context matchCase: false
]