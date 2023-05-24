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
					repository: 'github://OpenPonk/class-editor:legacy-roassal2';
					loads: #( 'complete' ) ];
			baseline: 'BormEditor'
			with: [ spec repository: 'github://OpenPonk/borm-editor:legacy-roassal2' ];
			baseline: 'PetriNets'
			with: [ spec repository: 'github://OpenPonk/petrinets:legacy-roassal2' ];
			baseline: 'FsmEditor'
			with: [ spec repository: 'github://OpenPonk/fsm-editor:legacy-roassal2' ];
			baseline: 'BPMN'
			with: [ spec repository: 'github://OpenPonk/OpenPonk-BPMN:legacy-roassal2' ].
		spec
			group: 'all'
			with:
				#( 'ClassEditor' 'BormEditor' 'PetriNets' 'FsmEditor' 'BPMN' );
			group: 'default' with: #( 'all' ) ]
]
