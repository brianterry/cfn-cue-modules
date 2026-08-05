package form

import "strings"

#Properties: {
	AppId?: string
	Cta?: #FormCTA
	DataType?: #FormDataTypeConfig
	EnvironmentName?: string
	Fields?: #FieldsMap
	FormActionType?: #FormActionType
	LabelDecorator?: #LabelDecorator
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	SchemaVersion?: string
	SectionalElements?: #SectionalElementMap
	Style?: #FormStyle
	Tags?: #Tags
}

#FieldConfig: {
	Excluded?: bool
	InputType?: #FieldInputConfig
	Label?: string
	Position?: #FieldPosition
	Validations?: [...#FieldValidationConfiguration]
}

#FieldInputConfig: {
	DefaultChecked?: bool
	DefaultCountryCode?: string
	DefaultValue?: string
	DescriptiveText?: string
	FileUploaderConfig?: #FileUploaderFieldConfig
	IsArray?: bool
	MaxValue?: number
	MinValue?: number
	Name?: string
	Placeholder?: string
	ReadOnly?: bool
	Required?: bool
	Step?: number
	Type: string
	Value?: string
	ValueMappings?: #ValueMappings
}

#FieldPosition: {
	Fixed: #FixedPosition
} | {
	RightOf: string
} | {
	Below: string
}

#FieldValidationConfiguration: {
	NumValues?: [...number]
	StrValues?: [...string]
	Type: string
	ValidationMessage?: string
}

#FieldsMap: {...}

#FileUploaderFieldConfig: {
	AcceptedFileTypes: [...string]
	AccessLevel: #StorageAccessLevel
	IsResumable?: bool
	MaxFileCount?: number
	MaxSize?: number
	ShowThumbnails?: bool
}

#FixedPosition: "first"

#FormActionType: "create" | "update"

#FormButton: {
	Children?: string
	Excluded?: bool
	Position?: #FieldPosition
}

#FormButtonsPosition: "top" | "bottom" | "top_and_bottom"

#FormCTA: {
	Cancel?: #FormButton
	Clear?: #FormButton
	Position?: #FormButtonsPosition
	Submit?: #FormButton
}

#FormDataSourceType: "DataStore" | "Custom"

#FormDataTypeConfig: {
	DataSourceType: #FormDataSourceType
	DataTypeName: string
}

#FormInputBindingProperties: {...}

#FormInputBindingPropertiesValue: {
	BindingProperties?: #FormInputBindingPropertiesValueProperties
	Type?: string
}

#FormInputBindingPropertiesValueProperties: {
	Model?: string
}

#FormInputValueProperty: {
	BindingProperties?: #FormInputValuePropertyBindingProperties
	Concat?: [...#FormInputValueProperty]
	Value?: string
}

#FormInputValuePropertyBindingProperties: {
	Field?: string
	Property: string
}

#FormStyle: {
	HorizontalGap?: #FormStyleConfig
	OuterPadding?: #FormStyleConfig
	VerticalGap?: #FormStyleConfig
}

#FormStyleConfig: {
	TokenReference: string
} | {
	Value: string
}

#LabelDecorator: "required" | "optional" | "none"

#SectionalElement: {
	Excluded?: bool
	Level?: number
	Orientation?: string
	Position?: #FieldPosition
	Text?: string
	Type: string
}

#SectionalElementMap: {...}

#StorageAccessLevel: "public" | "protected" | "private"

#Tags: {...}

#ValueMapping: {
	DisplayValue?: #FormInputValueProperty
	Value: #FormInputValueProperty
}

#ValueMappings: {
	BindingProperties?: #FormInputBindingProperties
	Values: [...#ValueMapping]
}
