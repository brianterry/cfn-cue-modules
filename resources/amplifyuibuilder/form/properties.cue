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

#FieldValidationConfiguration: {
	NumValues?: [...number]
	StrValues?: [...string]
	Type: string
	ValidationMessage?: string
}

#FileUploaderFieldConfig: {
	AcceptedFileTypes: [...string]
	AccessLevel: #StorageAccessLevel
	IsResumable?: bool
	MaxFileCount?: number
	MaxSize?: number
	ShowThumbnails?: bool
}

#FormButton: {
	Children?: string
	Excluded?: bool
	Position?: #FieldPosition
}

#FormCTA: {
	Cancel?: #FormButton
	Clear?: #FormButton
	Position?: #FormButtonsPosition
	Submit?: #FormButton
}

#FormDataTypeConfig: {
	DataSourceType: #FormDataSourceType
	DataTypeName: string
}

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

#SectionalElement: {
	Excluded?: bool
	Level?: number
	Orientation?: string
	Position?: #FieldPosition
	Text?: string
	Type: string
}

#ValueMapping: {
	DisplayValue?: #FormInputValueProperty
	Value: #FormInputValueProperty
}

#ValueMappings: {
	BindingProperties?: #FormInputBindingProperties
	Values: [...#ValueMapping]
}
