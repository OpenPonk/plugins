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
					repository: 'github://openponk/class-editor:v5.0.0';
					loads: #( 'complete' ) ];
			baseline: 'OpenPonkBormEditor' with: [
			spec
				repository: 'github://openponk/borm-editor:v5.0.0';
				loads: #( plugin ) ];
			baseline: 'OpenPonkPetriNets' with: [
			spec
				repository: 'github://openponk/petrinets:v5.0.0';
				loads: #( plugin ) ];
			baseline: 'OpenPonkFsmEditor' with: [
			spec
				repository: 'github://openponk/fsm-editor:v5.0.0';
				loads: #( plugin ) ];
			baseline: 'OpenPonkBPMN' with: [
			spec
				repository: 'github://openponk/BPMN:v5.0.0';
				loads: #( plugin ) ];
			baseline: 'OpenPonkMarkovChains' with: [
			spec
				repository: 'github://openponk/markov-chains:v5.0.0';
				loads: #( plugin ) ];
			baseline: 'OpenPonkERD' with: [
			spec
				repository: 'github://openponk/ERD:v5.0.0';
				loads: #( plugin ) ];
			baseline: 'OpenPonkDEMO' with: [
			spec
				repository: 'github://openponk/DEMO:v5.0.0';
				loads: #( plugin ) ];
			baseline: 'OpenPonk' with: [
			spec
				repository: 'github://openponk/openponk:v5.0.0';
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
