package topic

import "strings"

#Properties: {
	AwsAccountId?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	ConfigOptions?: #TopicConfigOptions
	CustomInstructions?: #CustomInstructions
	DataSets?: [...#DatasetMetadata]
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	FolderArns?: [...string]
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Tags?: [...#Tag]
	TopicId?: string & =~"^[A-Za-z0-9-_.\\\\+]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
	UserExperienceVersion?: #TopicUserExperienceVersion
}

#AggregationFunctionParameters: {...}

#AuthorSpecifiedAggregation: "COUNT" | "DISTINCT_COUNT" | "MIN" | "MAX" | "MEDIAN" | "SUM" | "AVERAGE" | "STDEV" | "STDEVP" | "VAR" | "VARP" | "PERCENTILE"

#CategoryFilterFunction: "EXACT" | "CONTAINS"

#CategoryFilterType: "CUSTOM_FILTER" | "CUSTOM_FILTER_LIST" | "FILTER_LIST"

#CellValueSynonym: {
	CellValue?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Synonyms?: [...string]
}

#CollectiveConstant: {
	ValueList?: [...string]
}

#ColumnDataRole: "DIMENSION" | "MEASURE"

#ColumnOrderingType: "GREATER_IS_BETTER" | "LESSER_IS_BETTER" | "SPECIFIED"

#ComparativeOrder: {
	SpecifedOrder?: [...string]
	TreatUndefinedSpecifiedValues?: #UndefinedSpecifiedValueType
	UseOrdering?: #ColumnOrderingType
}

#ConstantType: "SINGULAR" | "RANGE" | "COLLECTIVE"

#CustomInstructions: {
	// <p>A text field for providing additional guidance or context for response generation.</p>
	CustomInstructionsString: string & strings.MinRunes(0) & strings.MaxRunes(10000)
}

#DataAggregation: {
	DatasetRowDateGranularity?: #TopicTimeGranularity
	DefaultDateColumnName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#DatasetMetadata: {
	CalculatedFields?: [...#TopicCalculatedField]
	Columns?: [...#TopicColumn]
	DataAggregation?: #DataAggregation
	DatasetArn: string
	DatasetDescription?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	DatasetName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Filters?: [...#TopicFilter]
	NamedEntities?: [...#TopicNamedEntity]
}

#DefaultAggregation: "SUM" | "MAX" | "MIN" | "COUNT" | "DISTINCT_COUNT" | "AVERAGE" | "MEDIAN" | "STDEV" | "STDEVP" | "VAR" | "VARP"

#DefaultFormatting: {
	DisplayFormat?: #DisplayFormat
	DisplayFormatOptions?: #DisplayFormatOptions
}

#DisplayFormat: "AUTO" | "PERCENT" | "CURRENCY" | "NUMBER" | "DATE" | "STRING"

#DisplayFormatOptions: {
	BlankCellFormat?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	CurrencySymbol?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	DateFormat?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	DecimalSeparator?: #TopicNumericSeparatorSymbol
	FractionDigits?: number
	GroupingSeparator?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	NegativeFormat?: #NegativeFormat
	Prefix?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Suffix?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	UnitScaler?: #NumberScale
	UseBlankCellFormat?: bool
	UseGrouping?: bool
}

#FilterClass: "ENFORCED_VALUE_FILTER" | "CONDITIONAL_VALUE_FILTER" | "NAMED_VALUE_FILTER" | "DASHBOARD_DEFAULT_FILTER"

#NamedEntityAggType: "SUM" | "MIN" | "MAX" | "COUNT" | "AVERAGE" | "DISTINCT_COUNT" | "STDEV" | "STDEVP" | "VAR" | "VARP" | "PERCENTILE" | "MEDIAN" | "CUSTOM"

#NamedEntityDefinition: {
	FieldName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Metric?: #NamedEntityDefinitionMetric
	PropertyName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	PropertyRole?: #PropertyRole
	PropertyUsage?: #PropertyUsage
}

#NamedEntityDefinitionMetric: {
	Aggregation?: #NamedEntityAggType
	AggregationFunctionParameters?: #AggregationFunctionParameters
}

#NamedFilterAggType: "NO_AGGREGATION" | "SUM" | "AVERAGE" | "COUNT" | "DISTINCT_COUNT" | "MAX" | "MEDIAN" | "MIN" | "STDEV" | "STDEVP" | "VAR" | "VARP"

#NamedFilterType: "CATEGORY_FILTER" | "NUMERIC_EQUALITY_FILTER" | "NUMERIC_RANGE_FILTER" | "DATE_RANGE_FILTER" | "RELATIVE_DATE_FILTER" | "NULL_FILTER"

#NegativeFormat: {
	Prefix?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Suffix?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#NumberScale: "NONE" | "AUTO" | "THOUSANDS" | "MILLIONS" | "BILLIONS" | "TRILLIONS" | "LAKHS" | "CRORES"

#PropertyRole: "PRIMARY" | "ID"

#PropertyUsage: "INHERIT" | "DIMENSION" | "MEASURE"

#RangeConstant: {
	Maximum?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Minimum?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#SemanticEntityType: {
	SubTypeName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	TypeName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	TypeParameters?: #TypeParameters
}

#SemanticType: {
	FalseyCellValue?: string
	FalseyCellValueSynonyms?: [...string]
	SubTypeName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	TruthyCellValue?: string
	TruthyCellValueSynonyms?: [...string]
	TypeName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	TypeParameters?: #TypeParameters
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TopicCalculatedField: {
	Aggregation?: #DefaultAggregation
	AllowedAggregations?: [...#AuthorSpecifiedAggregation]
	CalculatedFieldDescription?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	CalculatedFieldName: string & strings.MinRunes(0) & strings.MaxRunes(256)
	CalculatedFieldSynonyms?: [...string & strings.MinRunes(0) & strings.MaxRunes(256)]
	CellValueSynonyms?: [...#CellValueSynonym]
	ColumnDataRole?: #ColumnDataRole
	ComparativeOrder?: #ComparativeOrder
	DefaultFormatting?: #DefaultFormatting
	DisableIndexing?: bool
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	IsIncludedInTopic?: bool
	NeverAggregateInFilter?: bool
	NonAdditive?: bool
	NotAllowedAggregations?: [...#AuthorSpecifiedAggregation]
	SemanticType?: #SemanticType
	TimeGranularity?: #TopicTimeGranularity
}

#TopicCategoryFilter: {
	CategoryFilterFunction?: #CategoryFilterFunction
	CategoryFilterType?: #CategoryFilterType
	Constant?: #TopicCategoryFilterConstant
	Inverse?: bool
}

#TopicCategoryFilterConstant: {
	CollectiveConstant?: #CollectiveConstant
	ConstantType?: #ConstantType
	SingularConstant?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TopicColumn: {
	Aggregation?: #DefaultAggregation
	AllowedAggregations?: [...#AuthorSpecifiedAggregation]
	CellValueSynonyms?: [...#CellValueSynonym]
	ColumnDataRole?: #ColumnDataRole
	ColumnDescription?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	ColumnFriendlyName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	ColumnName: string & strings.MinRunes(0) & strings.MaxRunes(256)
	ColumnSynonyms?: [...string & strings.MinRunes(0) & strings.MaxRunes(256)]
	ComparativeOrder?: #ComparativeOrder
	DefaultFormatting?: #DefaultFormatting
	DisableIndexing?: bool
	IsIncludedInTopic?: bool
	NeverAggregateInFilter?: bool
	NonAdditive?: bool
	NotAllowedAggregations?: [...#AuthorSpecifiedAggregation]
	SemanticType?: #SemanticType
	TimeGranularity?: #TopicTimeGranularity
}

#TopicConfigOptions: {
	QBusinessInsightsEnabled?: bool
}

#TopicDateRangeFilter: {
	Constant?: #TopicRangeFilterConstant
	Inclusive?: bool
}

#TopicDetails: {
	ConfigOptions?: #TopicConfigOptions
	DataSets?: [...#DatasetMetadata]
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	UserExperienceVersion?: #TopicUserExperienceVersion
}

#TopicFilter: {
	CategoryFilter?: #TopicCategoryFilter
	DateRangeFilter?: #TopicDateRangeFilter
	FilterClass?: #FilterClass
	FilterDescription?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	FilterName: string & strings.MinRunes(0) & strings.MaxRunes(256)
	FilterSynonyms?: [...string & strings.MinRunes(0) & strings.MaxRunes(256)]
	FilterType?: #NamedFilterType
	NumericEqualityFilter?: #TopicNumericEqualityFilter
	NumericRangeFilter?: #TopicNumericRangeFilter
	OperandFieldName: string & strings.MinRunes(0) & strings.MaxRunes(256)
	RelativeDateFilter?: #TopicRelativeDateFilter
}

#TopicNamedEntity: {
	Definition?: [...#NamedEntityDefinition]
	EntityDescription?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	EntityName: string & strings.MinRunes(0) & strings.MaxRunes(256)
	EntitySynonyms?: [...string & strings.MinRunes(0) & strings.MaxRunes(256)]
	SemanticEntityType?: #SemanticEntityType
}

#TopicNumericEqualityFilter: {
	Aggregation?: #NamedFilterAggType
	Constant?: #TopicSingularFilterConstant
}

#TopicNumericRangeFilter: {
	Aggregation?: #NamedFilterAggType
	Constant?: #TopicRangeFilterConstant
	Inclusive?: bool
}

#TopicNumericSeparatorSymbol: "COMMA" | "DOT"

#TopicRangeFilterConstant: {
	ConstantType?: #ConstantType
	RangeConstant?: #RangeConstant
}

#TopicRelativeDateFilter: {
	Constant?: #TopicSingularFilterConstant
	RelativeDateFilterFunction?: #TopicRelativeDateFilterFunction
	TimeGranularity?: #TopicTimeGranularity
}

#TopicRelativeDateFilterFunction: "PREVIOUS" | "THIS" | "LAST" | "NEXT" | "NOW"

#TopicSingularFilterConstant: {
	ConstantType?: #ConstantType
	SingularConstant?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TopicTimeGranularity: "SECOND" | "MINUTE" | "HOUR" | "DAY" | "WEEK" | "MONTH" | "QUARTER" | "YEAR"

#TopicUserExperienceVersion: "LEGACY" | "NEW_READER_EXPERIENCE"

#TypeParameters: {...}

#UndefinedSpecifiedValueType: "LEAST" | "MOST"
