package recipe

import "strings"

#Properties: {
	// Description of the recipe
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// Recipe name
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Steps: [...#RecipeStep]
	Tags?: [...#Tag]
}

#Action: {
	// Step action operation
	Operation: string
	Parameters?: #RecipeParameters | #ParameterMap
}

#ConditionExpression: {
	// Input condition to be applied to the target column
	Condition: string
	// Name of the target column
	TargetColumn: string
	// Value of the condition
	Value?: string
}

#DataCatalogInputDefinition: {
	// Catalog id
	CatalogId?: string
	// Database name
	DatabaseName?: string
	// Table name
	TableName?: string
	TempDirectory?: #S3Location
}

#RecipeParameters: {
	AggregateFunction?: string
	Base?: string
	CaseStatement?: string
	CategoryMap?: string
	CharsToRemove?: string
	CollapseConsecutiveWhitespace?: string
	ColumnDataType?: string
	ColumnRange?: string
	Count?: string
	CustomCharacters?: string
	CustomStopWords?: string
	CustomValue?: string
	DatasetsColumns?: string
	DateAddValue?: string
	DateTimeFormat?: string
	DateTimeParameters?: string
	DeleteOtherRows?: string
	Delimiter?: string
	EndPattern?: string
	EndPosition?: string
	EndValue?: string
	ExpandContractions?: string
	Exponent?: string
	FalseString?: string
	GroupByAggFunctionOptions?: string
	GroupByColumns?: string
	HiddenColumns?: string
	IgnoreCase?: string
	IncludeInSplit?: string
	// Input
	Input?: string | string
	Interval?: string
	IsText?: string
	JoinKeys?: string
	JoinType?: string
	LeftColumns?: string
	Limit?: string
	LowerBound?: string
	MapType?: string
	ModeType?: string
	MultiLine?: bool
	NumRows?: string
	NumRowsAfter?: string
	NumRowsBefore?: string
	OrderByColumn?: string
	OrderByColumns?: string
	Other?: string
	Pattern?: string
	PatternOption1?: string
	PatternOption2?: string
	PatternOptions?: string
	Period?: string
	Position?: string
	RemoveAllPunctuation?: string
	RemoveAllQuotes?: string
	RemoveAllWhitespace?: string
	RemoveCustomCharacters?: string
	RemoveCustomValue?: string
	RemoveLeadingAndTrailingPunctuation?: string
	RemoveLeadingAndTrailingQuotes?: string
	RemoveLeadingAndTrailingWhitespace?: string
	RemoveLetters?: string
	RemoveNumbers?: string
	RemoveSourceColumn?: string
	RemoveSpecialCharacters?: string
	RightColumns?: string
	SampleSize?: string
	SampleType?: string
	SecondInput?: string
	SecondaryInputs?: [...#SecondaryInput]
	SheetIndexes?: [...int]
	SheetNames?: [...string]
	SourceColumn?: string
	SourceColumn1?: string
	SourceColumn2?: string
	SourceColumns?: string
	StartColumnIndex?: string
	StartPattern?: string
	StartPosition?: string
	StartValue?: string
	StemmingMode?: string
	StepCount?: string
	StepIndex?: string
	StopWordsMode?: string
	Strategy?: string
	TargetColumn?: string
	TargetColumnNames?: string
	TargetDateFormat?: string
	TargetIndex?: string
	TimeZone?: string
	TokenizerPattern?: string
	TrueString?: string
	UdfLang?: string
	Units?: string
	UnpivotColumn?: string
	UpperBound?: string
	UseNewDataFrame?: string
	Value?: string
	Value1?: string
	Value2?: string
	ValueColumn?: string
	ViewFrame?: string
}

#RecipeStep: {
	Action: #Action
	// Condition expressions applied to the step action
	ConditionExpressions?: [...#ConditionExpression]
}

#S3Location: {
	Bucket: string
	Key?: string
}

#SecondaryInput: {
	DataCatalogInputDefinition?: #DataCatalogInputDefinition
	S3InputDefinition?: #S3Location
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
