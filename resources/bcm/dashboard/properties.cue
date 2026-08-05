package dashboard

import "strings"

#Properties: {
	Description?: string & =~"^(?!.* {2})[ a-zA-Z0-9.,!?;:@#$%&\\-_/\\\\]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Name: string & =~"^(?!.* {2})[a-zA-Z][a-zA-Z0-9 _-]{0,48}[a-zA-Z0-9_-]$" & strings.MinRunes(2) & strings.MaxRunes(50)
	Tags?: [...#Tag]
	Widgets: [...#Widget]
}

#CostAndUsageExpression: {
	And?: [...#CostAndUsageExpression]
	CostCategories?: #CostCategoryValues
	Dimensions?: #DimensionValues
	Not?: #CostAndUsageExpression
	Or?: [...#CostAndUsageExpression]
	Tags?: #TagValues
}

#CostAndUsageQuery: {
	Filter?: #CostAndUsageExpression
	Granularity: #Granularity
	GroupBy?: [...#GroupDefinition]
	Metrics: [...#MetricName]
	TimeRange: #DateTimeRange
}

#CostCategoryValues: {
	Key: string
	MatchOptions?: [...#MatchOption]
	Values: [...string]
}

#DateTimeRange: {
	EndTime: #DateTimeValue
	StartTime: #DateTimeValue
}

#DateTimeValue: {
	Type: #DateTimeType
	Value: string
}

#DimensionValues: {
	Key: #Dimension
	MatchOptions?: [...#MatchOption]
	Values: [...string]
}

#DisplayConfig: {
	Graph?: #GraphDisplayConfigMap
	Table?: #TableDisplayConfigStruct
}

#Expression: {
	And?: [...#Expression]
	CostCategories?: #CostCategoryValues
	Dimensions?: #DimensionValues
	Not?: #Expression
	Tags?: #TagValues
}

#GraphDisplayConfig: {
	VisualType: #VisualType
}

#GroupDefinition: {
	Key: string & =~"^[\\S\\s]*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	Type?: #GroupDefinitionType
}

#QueryParameters: {
	CostAndUsage?: #CostAndUsageQuery
	ReservationCoverage?: #ReservationCoverageQuery
	ReservationUtilization?: #ReservationUtilizationQuery
	SavingsPlansCoverage?: #SavingsPlansCoverageQuery
	SavingsPlansUtilization?: #SavingsPlansUtilizationQuery
}

#ReservationCoverageQuery: {
	Filter?: #Expression
	Granularity?: #Granularity
	GroupBy?: [...#GroupDefinition]
	Metrics?: [...#MetricName]
	TimeRange: #DateTimeRange
}

#ReservationUtilizationQuery: {
	Filter?: #Expression
	Granularity?: #Granularity
	GroupBy?: [...#GroupDefinition]
	TimeRange: #DateTimeRange
}

#SavingsPlansCoverageQuery: {
	Filter?: #Expression
	Granularity?: #Granularity
	GroupBy?: [...#GroupDefinition]
	Metrics?: [...#MetricName]
	TimeRange: #DateTimeRange
}

#SavingsPlansUtilizationQuery: {
	Filter?: #Expression
	Granularity?: #Granularity
	TimeRange: #DateTimeRange
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TagValues: {
	Key: string
	MatchOptions?: [...#MatchOption]
	Values: [...string]
}

#Widget: {
	Configs: [...#WidgetConfig]
	Description?: string & =~"^(?!.* {2})[ a-zA-Z0-9.,!?;:@#$%&\\-_/\\\\]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Height?: int & >=4 & <=10
	HorizontalOffset?: int
	Title: string & =~"^(?!.* {2})[a-zA-Z0-9_-][ a-zA-Z0-9_-]*[a-zA-Z0-9_-]$" & strings.MinRunes(2) & strings.MaxRunes(50)
	Width?: int & >=2 & <=6
}

#WidgetConfig: {
	DisplayConfig: #DisplayConfig
	QueryParameters: #QueryParameters
}
