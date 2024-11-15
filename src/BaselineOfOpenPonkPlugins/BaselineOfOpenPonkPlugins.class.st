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
			baseline: 'OpenPonkClassEditor' with: [
				spec
					repository: 'github://OpenPonk/class-editor:v4.1.x';
					loads: #( 'complete' ) ];
			baseline: 'OpenPonkBormEditor'
			with: [ spec repository: 'github://OpenPonk/borm-editor:v4.1.x' ];
			baseline: 'OpenPonkPetriNets'
			with: [ spec repository: 'github://OpenPonk/petrinets:v4.1.x' ];
			baseline: 'OpenPonkFsmEditor'
			with: [ spec repository: 'github://OpenPonk/fsm-editor:v4.1.x' ];
			baseline: 'OpenPonkBPMN'
			with: [ spec repository: 'github://OpenPonk/BPMN:v4.1.x' ];
			baseline: 'OpenPonkMarkovChains'
			with: [ spec repository: 'github://OpenPonk/markov-chains:v4.1.x' ].
		spec
			group: 'all'
			with:
				#( 'OpenPonkClassEditor' 'OpenPonkBormEditor' 'OpenPonkPetriNets' 'OpenPonkFsmEditor' 'OpenPonkBPMN'
				   'OpenPonkMarkovChains' );
			group: 'default' with: #( 'all' ) ]
]
