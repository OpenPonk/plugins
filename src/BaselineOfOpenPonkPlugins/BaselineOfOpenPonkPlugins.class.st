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
			baseline: 'OpenPonkBormEditor' with: [
			spec
				repository: 'github://OpenPonk/borm-editor';
				loads: #( plugin ) ];
			baseline: 'OpenPonkPetriNets' with: [
			spec
				repository: 'github://OpenPonk/petrinets';
				loads: #( plugin ) ];
			baseline: 'OpenPonkFsmEditor' with: [
			spec
				repository: 'github://OpenPonk/fsm-editor';
				loads: #( plugin ) ];
			baseline: 'OpenPonkBPMN' with: [
			spec
				repository: 'github://OpenPonk/BPMN';
				loads: #( plugin ) ];
			baseline: 'OpenPonkMarkovChains' with: [
			spec
				repository: 'github://OpenPonk/markov-chains';
				loads: #( plugin ) ];
			baseline: 'OpenPonkERD' with: [
			spec
				repository: 'github://OpenPonk/ERD:main';
				loads: #( plugin ) ];
			baseline: 'OpenPonkDEMO' with: [
			spec
				repository: 'github://OpenPonk/DEMO:main';
				loads: #( plugin ) ].
		spec
			group: 'all'
			with:
				#( 'OpenPonkClassEditor' 'OpenPonkBormEditor' 'OpenPonkPetriNets'
				   'OpenPonkFsmEditor' 'OpenPonkBPMN' 'OpenPonkMarkovChains'
				   'OpenPonkERD' 'OpenPonkDEMO' );
			group: 'default' with: #( 'all' ) ]
]
