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
					repository: 'github://OpenPonk/class-editor:dev-roassal3';
					loads: #( 'complete' ) ];
			baseline: 'BormEditor'
			with: [ spec repository: 'github://OpenPonk/borm-editor:dev-roassal3' ];
			baseline: 'PetriNets'
			with: [ spec repository: 'github://OpenPonk/petrinets:dev-roassal3' ];
			baseline: 'FsmEditor'
			with: [ spec repository: 'github://OpenPonk/fsm-editor:dev-roassal3' ];
			baseline: 'BPMN'
			with: [ spec repository: 'github://OpenPonk/OpenPonk-BPMN:dev-roassal3' ].
		spec
			group: 'all'
			with:
				#( 'ClassEditor' 'BormEditor' 'PetriNets' 'FsmEditor' 'BPMN' );
			group: 'default' with: #( 'all' ) ]
]
