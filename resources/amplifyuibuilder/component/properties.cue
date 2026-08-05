package component

import "strings"

#Properties: {
	AppId?: string
	BindingProperties?: #ComponentBindingProperties
	Children?: [...#ComponentChild]
	CollectionProperties?: #ComponentCollectionProperties
	ComponentType?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	EnvironmentName?: string
	Events?: #ComponentEvents
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Overrides?: #ComponentOverrides
	Properties?: #ComponentProperties
	SchemaVersion?: string
	SourceId?: string
	Tags?: #Tags
	Variants?: [...#ComponentVariant]
}

#ActionParameters: {
	Anchor?: #ComponentProperty
	Fields?: #ComponentProperties
	Global?: #ComponentProperty
	Id?: #ComponentProperty
	Model?: string
	State?: #MutationActionSetStateParameter
	Target?: #ComponentProperty
	Type?: #ComponentProperty
	Url?: #ComponentProperty
}

#ComponentBindingProperties: {...}

#ComponentBindingPropertiesValue: {
	BindingProperties?: #ComponentBindingPropertiesValueProperties
	DefaultValue?: string
	Type?: string
}

#ComponentBindingPropertiesValueProperties: {
	Bucket?: string
	DefaultValue?: string
	Field?: string
	Key?: string
	Model?: string
	Predicates?: [...#Predicate]
	SlotName?: string
	UserAttribute?: string
}

#ComponentChild: {
	Children?: [...#ComponentChild]
	ComponentType: string
	Events?: #ComponentEvents
	Name: string
	Properties: #ComponentProperties
	SourceId?: string
}

#ComponentCollectionProperties: {...}

#ComponentConditionProperty: {
	Else?: #ComponentProperty
	Field?: string
	Operand?: string
	OperandType?: string
	Operator?: string
	Property?: string
	Then?: #ComponentProperty
}

#ComponentDataConfiguration: {
	Identifiers?: [...string]
	Model: string
	Predicate?: #Predicate
	Sort?: [...#SortProperty]
}

#ComponentEvent: {
	Action?: string
	BindingEvent?: string
	Parameters?: #ActionParameters
}

#ComponentEvents: {...}

#ComponentOverrides: {...}

#ComponentOverridesValue: {...}

#ComponentProperties: {...}

#ComponentProperty: {
	BindingProperties?: #ComponentPropertyBindingProperties
	Bindings?: #FormBindings
	CollectionBindingProperties?: #ComponentPropertyBindingProperties
	ComponentName?: string
	Concat?: [...#ComponentProperty]
	Condition?: #ComponentConditionProperty
	Configured?: bool
	DefaultValue?: string
	Event?: string
	ImportedValue?: string
	Model?: string
	Property?: string
	Type?: string
	UserAttribute?: string
	Value?: string
}

#ComponentPropertyBindingProperties: {
	Field?: string
	Property: string
}

#ComponentVariant: {
	Overrides?: #ComponentOverrides
	VariantValues?: #ComponentVariantValues
}

#ComponentVariantValues: {...}

#FormBindingElement: {
	Element: string
	Property: string
}

#FormBindings: {...}

#MutationActionSetStateParameter: {
	ComponentName: string
	Property: string
	Set: #ComponentProperty
}

#Predicate: {
	And?: [...#Predicate]
	Field?: string
	Operand?: string
	OperandType?: string & =~"^boolean|string|number$"
	Operator?: string
	Or?: [...#Predicate]
}

#SortDirection: "ASC" | "DESC"

#SortProperty: {
	Direction: #SortDirection
	Field: string
}

#Tags: {...}
