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
					repository: 'github://OpenPonk/class-editor';
					loads: #( 'complete' ) ];
			baseline: 'OpenPonkBormEditor'
			with: [ spec repository: 'github://OpenPonk/borm-editor' ];
			baseline: 'OpenPonkPetriNets'
			with: [ spec repository: 'github://OpenPonk/petrinets' ];
			baseline: 'OpenPonkFsmEditor'
			with: [ spec repository: 'github://OpenPonk/fsm-editor' ];
			baseline: 'OpenPonkBPMN'
			with: [ spec repository: 'github://OpenPonk/BPMN' ];
			baseline: 'OpenPonkMarkovChains'
			with: [ spec repository: 'github://OpenPonk/markov-chains' ].
		spec
			group: 'all'
			with:
				#( 'OpenPonkClassEditor' 'OpenPonkBormEditor' 'OpenPonkPetriNets' 'OpenPonkFsmEditor' 'OpenPonkBPMN'
				   'OpenPonkMarkovChains' );
			group: 'default' with: #( 'all' ) ]
]
