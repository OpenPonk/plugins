Class {
	#name : #BaselineOfOpenPonkPlugins,
	#superclass : #BaselineOf,
	#category : #BaselineOfOpenPonkPlugins
}

{ #category : #baselines }
BaselineOfOpenPonkPlugins >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			baseline: 'ClassEditor' with: [
				spec
					repository: 'github://OpenPonk/class-editor';
					loads: #( 'complete' ) ];
			baseline: 'BormEditor'
			with: [ spec repository: 'github://OpenPonk/borm-editor' ];
			baseline: 'PetriNets'
			with: [ spec repository: 'github://OpenPonk/petrinets' ];
			baseline: 'FsmEditor'
			with: [ spec repository: 'github://OpenPonk/fsm-editor' ];
			baseline: 'BPMN'
			with: [ spec repository: 'github://OpenPonk/BPMN' ];
			baseline: 'MarkovChains'
			with: [ spec repository: 'github://OpenPonk/markov-chains:main' ].
		spec
			group: 'all'
			with:
				#( 'ClassEditor' 'BormEditor' 'PetriNets' 'FsmEditor' 'BPMN'
				   'MarkovChains' );
			group: 'default' with: #( 'all' ) ]
]
