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
					repository: 'github://OpenPonk/class-editor:dev/Roassal3';
					loads: #( 'complete' ) ];
			baseline: 'BormEditor'
			with: [ spec repository: 'github://OpenPonk/borm-editor:dev/Roassal3' ];
			baseline: 'PetriNets'
			with: [ spec repository: 'github://OpenPonk/petrinets:dev/Roassal3' ];
			baseline: 'FsmEditor'
			with: [ spec repository: 'github://OpenPonk/fsm-edito:dev/Roassal3r' ];
			baseline: 'BPMN'
			with: [ spec repository: 'github://OpenPonk/OpenPonk-BPMN:dev/Roassal3' ].
		spec
			group: 'all'
			with:
				#( 'ClassEditor' 'BormEditor' 'PetriNets' 'FsmEditor' 'BPMN' );
			group: 'default' with: #( 'all' ) ]
]
