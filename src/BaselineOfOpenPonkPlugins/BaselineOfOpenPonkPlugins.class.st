"
Metacello baseline aggregating the loading configurations and dependencies for all primary OpenPonk plugins.
"
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
					repository: 'github://OpenPonk/class-editor:v5.1.1';
					loads: #( 'complete' ) ];
			baseline: 'OpenPonkBormEditor' with: [
			spec
				repository: 'github://OpenPonk/borm-editor:v5.1.1';
				loads: #( plugin ) ];
			baseline: 'OpenPonkPetriNets' with: [
			spec
				repository: 'github://OpenPonk/petrinets:v5.1.1';
				loads: #( plugin ) ];
			baseline: 'OpenPonkFsmEditor' with: [
			spec
				repository: 'github://OpenPonk/fsm-editor:v5.1.1';
				loads: #( plugin ) ];
			baseline: 'OpenPonkBPMN' with: [
			spec
				repository: 'github://OpenPonk/BPMN:v5.1.1';
				loads: #( plugin ) ];
			baseline: 'OpenPonkMarkovChains' with: [
			spec
				repository: 'github://OpenPonk/markov-chains:v5.1.1';
				loads: #( plugin ) ];
			baseline: 'OpenPonkERD' with: [
			spec
				repository: 'github://OpenPonk/ERD:v5.1.1';
				loads: #( plugin ) ];
			baseline: 'OpenPonkDEMO' with: [
			spec
				repository: 'github://OpenPonk/DEMO:v5.1.1';
				loads: #( plugin ) ];
			baseline: 'OpenPonk' with: [
			spec
				repository: 'github://OpenPonk/openponk:v5.1.1';
				loads: #( 'dev-plugin' ) ].
		spec
			group: 'all'
			with:
				#( 'OpenPonkClassEditor' 'OpenPonkBormEditor' 'OpenPonkPetriNets'
				   'OpenPonkFsmEditor' 'OpenPonkBPMN' 'OpenPonkMarkovChains'
				   'OpenPonkERD' 'OpenPonkDEMO' );
			group: 'default' with: #( 'all' );
			group: 'dev' with: #( 'all' 'OpenPonk' ) ]
]
