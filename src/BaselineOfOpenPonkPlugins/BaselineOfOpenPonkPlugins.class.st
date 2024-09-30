Class {
	#name : 'BaselineOfOpenPonkPlugins',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfOpenPonkPlugins',
	#package : 'BaselineOfOpenPonkPlugins'
}

{ #category : 'baselines' }
BaselineOfOpenPonkPlugins >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			baseline: 'ClassEditor' with: [
				spec
					repository: 'github://OpenPonk/class-editor:v4.0.x';
					loads: #( 'complete' ) ];
			baseline: 'BormEditor'
			with: [ spec repository: 'github://OpenPonk/borm-editor:v4.0.x' ];
			baseline: 'PetriNets'
			with: [ spec repository: 'github://OpenPonk/petrinets:v4.0.x' ];
			baseline: 'FsmEditor'
			with: [ spec repository: 'github://OpenPonk/fsm-editor:v4.0.x' ];
			baseline: 'BPMN'
			with: [ spec repository: 'github://OpenPonk/BPMN:v4.0.x' ];
			baseline: 'MarkovChains'
			with: [ spec repository: 'github://OpenPonk/markov-chains:v4.0.x' ].
		spec
			group: 'all'
			with:
				#( 'ClassEditor' 'BormEditor' 'PetriNets' 'FsmEditor' 'BPMN'
				   'MarkovChains' );
			group: 'default' with: #( 'all' ) ]
]
