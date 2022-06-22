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
					repository: 'github://OpenPonk/class-editor:spec2';
					loads: #( 'complete' ) ];
			baseline: 'BormEditor'
			with: [ spec repository: 'github://OpenPonk/borm-editor:spec2' ];
			baseline: 'PetriNets'
			with: [ spec repository: 'github://OpenPonk/petrinets:spec2' ];
			baseline: 'FsmEditor'
			with: [ spec repository: 'github://OpenPonk/fsm-editor:spec2' ];
			baseline: 'BPMN'
			with: [ spec repository: 'github://OpenPonk/OpenPonk-BPMN:spec2' ].
		spec
			group: 'all'
			with:
				#( 'ClassEditor' 'BormEditor' 'PetriNets' 'FsmEditor' 'BPMN' );
			group: 'default' with: #( 'all' ) ]
]
