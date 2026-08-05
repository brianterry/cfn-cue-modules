package dashboard

import "strings"

#Properties: {
	AwsAccountId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	DashboardId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	DashboardPublishOptions?: #DashboardPublishOptions
	Definition?: #DashboardVersionDefinition
	FolderArns?: [...string]
	LinkEntities?: [...string & =~"^arn:aws[\\w\\-]*:quicksight:[\\w\\-]+:\\d+:analysis/[\\w\\-]{1,512}$" & strings.MinRunes(1) & strings.MaxRunes(1024)]
	LinkSharingConfiguration?: #LinkSharingConfiguration
	Name: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Parameters?: #Parameters
	Permissions?: [...#ResourcePermission]
	SourceEntity?: #DashboardSourceEntity
	Tags?: [...#Tag]
	ThemeArn?: string
	ValidationStrategy?: #ValidationStrategy
	VersionDescription?: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#AdHocFilteringOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#AggregationFunction: {
	AttributeAggregationFunction?: #AttributeAggregationFunction
	CategoricalAggregationFunction?: #CategoricalAggregationFunction
	DateAggregationFunction?: #DateAggregationFunction
	NumericalAggregationFunction?: #NumericalAggregationFunction
}

#AggregationSortConfiguration: {
	AggregationFunction?: #AggregationFunction
	Column: #ColumnIdentifier
	SortDirection: #SortDirection
}

#AllSheetsFilterScopeConfiguration: {...}

#AnalysisDefaults: {
	DefaultNewSheetConfiguration: #DefaultNewSheetConfiguration
}

#AnchorDateConfiguration: {
	AnchorOption?: #AnchorOption
	ParameterName?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#AnchorOption: "NOW"

#ArcAxisConfiguration: {
	Range?: #ArcAxisDisplayRange
	ReserveRange?: number
}

#ArcAxisDisplayRange: {
	Max?: number
	Min?: number
}

#ArcConfiguration: {
	ArcAngle?: number
	ArcThickness?: #ArcThicknessOptions
}

#ArcOptions: {
	ArcThickness?: #ArcThickness
}

#ArcThickness: "SMALL" | "MEDIUM" | "LARGE" | "WHOLE"

#ArcThicknessOptions: "SMALL" | "MEDIUM" | "LARGE"

#AssetOptions: {
	ExcludedDataSetArns?: [...string]
	QBusinessInsightsStatus?: #QBusinessInsightsStatus
	Timezone?: string
	WeekStart?: #DayOfTheWeek
}

#AttributeAggregationFunction: {
	SimpleAttributeAggregation?: #SimpleAttributeAggregationFunction
	ValueForMultipleValues?: string
}

#AxisBinding: "PRIMARY_YAXIS" | "SECONDARY_YAXIS"

#AxisDataOptions: {
	DateAxisOptions?: #DateAxisOptions
	NumericAxisOptions?: #NumericAxisOptions
}

#AxisDisplayDataDrivenRange: {...}

#AxisDisplayMinMaxRange: {
	Maximum?: number
	Minimum?: number
}

#AxisDisplayOptions: {
	AxisLineVisibility?: #Visibility
	// String based length that is composed of value and unit in px
	AxisOffset?: string
	DataOptions?: #AxisDataOptions
	GridLineVisibility?: #Visibility
	ScrollbarOptions?: #ScrollBarOptions
	TickLabelOptions?: #AxisTickLabelOptions
}

#AxisDisplayRange: {
	DataDriven?: #AxisDisplayDataDrivenRange
	MinMax?: #AxisDisplayMinMaxRange
}

#AxisLabelOptions: {
	ApplyTo?: #AxisLabelReferenceOptions
	CustomLabel?: string
	FontConfiguration?: #FontConfiguration
}

#AxisLabelReferenceOptions: {
	Column: #ColumnIdentifier
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#AxisLinearScale: {
	StepCount?: number
	StepSize?: number
}

#AxisLogarithmicScale: {
	Base?: number
}

#AxisScale: {
	Linear?: #AxisLinearScale
	Logarithmic?: #AxisLogarithmicScale
}

#AxisTickLabelOptions: {
	LabelOptions?: #LabelOptions
	RotationAngle?: number
}

#BarChartAggregatedFieldWells: {
	Category?: [...#DimensionField]
	Colors?: [...#DimensionField]
	SmallMultiples?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#BarChartConfiguration: {
	BarsArrangement?: #BarsArrangement
	CategoryAxis?: #AxisDisplayOptions
	CategoryLabelOptions?: #ChartAxisLabelOptions
	ColorLabelOptions?: #ChartAxisLabelOptions
	ContributionAnalysisDefaults?: [...#ContributionAnalysisDefault]
	DataLabels?: #DataLabelOptions
	FieldWells?: #BarChartFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	Orientation?: #BarChartOrientation
	ReferenceLines?: [...#ReferenceLine]
	SmallMultiplesOptions?: #SmallMultiplesOptions
	SortConfiguration?: #BarChartSortConfiguration
	Tooltip?: #TooltipOptions
	ValueAxis?: #AxisDisplayOptions
	ValueLabelOptions?: #ChartAxisLabelOptions
	VisualPalette?: #VisualPalette
}

#BarChartFieldWells: {
	BarChartAggregatedFieldWells?: #BarChartAggregatedFieldWells
}

#BarChartOrientation: "HORIZONTAL" | "VERTICAL"

#BarChartSortConfiguration: {
	CategoryItemsLimit?: #ItemsLimitConfiguration
	CategorySort?: [...#FieldSortOptions]
	ColorItemsLimit?: #ItemsLimitConfiguration
	ColorSort?: [...#FieldSortOptions]
	SmallMultiplesLimitConfiguration?: #ItemsLimitConfiguration
	SmallMultiplesSort?: [...#FieldSortOptions]
}

#BarChartVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #BarChartConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#BarsArrangement: "CLUSTERED" | "STACKED" | "STACKED_PERCENT"

#BaseMapStyleType: "LIGHT_GRAY" | "DARK_GRAY" | "STREET" | "IMAGERY"

#BinCountOptions: {
	Value?: number & >=0
}

#BinWidthOptions: {
	BinCountLimit?: number & >=0 & <=1000
	Value?: number & >=0
}

#BodySectionConfiguration: {
	Content: #BodySectionContent
	PageBreakConfiguration?: #SectionPageBreakConfiguration
	RepeatConfiguration?: #BodySectionRepeatConfiguration
	SectionId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Style?: #SectionStyle
}

#BodySectionContent: {
	Layout?: #SectionLayoutConfiguration
}

#BodySectionDynamicCategoryDimensionConfiguration: {
	Column: #ColumnIdentifier
	Limit?: number & >=1 & <=1000
	SortByMetrics?: [...#ColumnSort]
}

#BodySectionDynamicNumericDimensionConfiguration: {
	Column: #ColumnIdentifier
	Limit?: number & >=1 & <=1000
	SortByMetrics?: [...#ColumnSort]
}

#BodySectionRepeatConfiguration: {
	DimensionConfigurations?: [...#BodySectionRepeatDimensionConfiguration]
	NonRepeatingVisuals?: [...string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)]
	PageBreakConfiguration?: #BodySectionRepeatPageBreakConfiguration
}

#BodySectionRepeatDimensionConfiguration: {
	DynamicCategoryDimensionConfiguration?: #BodySectionDynamicCategoryDimensionConfiguration
	DynamicNumericDimensionConfiguration?: #BodySectionDynamicNumericDimensionConfiguration
}

#BodySectionRepeatPageBreakConfiguration: {
	After?: #SectionAfterPageBreak
}

#BoxPlotAggregatedFieldWells: {
	GroupBy?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#BoxPlotChartConfiguration: {
	BoxPlotOptions?: #BoxPlotOptions
	CategoryAxis?: #AxisDisplayOptions
	CategoryLabelOptions?: #ChartAxisLabelOptions
	FieldWells?: #BoxPlotFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	PrimaryYAxisDisplayOptions?: #AxisDisplayOptions
	PrimaryYAxisLabelOptions?: #ChartAxisLabelOptions
	ReferenceLines?: [...#ReferenceLine]
	SortConfiguration?: #BoxPlotSortConfiguration
	Tooltip?: #TooltipOptions
	VisualPalette?: #VisualPalette
}

#BoxPlotFieldWells: {
	BoxPlotAggregatedFieldWells?: #BoxPlotAggregatedFieldWells
}

#BoxPlotFillStyle: "SOLID" | "TRANSPARENT"

#BoxPlotOptions: {
	AllDataPointsVisibility?: #Visibility
	OutlierVisibility?: #Visibility
	StyleOptions?: #BoxPlotStyleOptions
}

#BoxPlotSortConfiguration: {
	CategorySort?: [...#FieldSortOptions]
	PaginationConfiguration?: #PaginationConfiguration
}

#BoxPlotStyleOptions: {
	FillStyle?: #BoxPlotFillStyle
}

#BoxPlotVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #BoxPlotChartConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#CalculatedField: {
	DataSetIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(32000)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
}

#CalculatedMeasureField: {
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#CascadingControlConfiguration: {
	SourceControls?: [...#CascadingControlSource]
}

#CascadingControlSource: {
	ColumnToMatch?: #ColumnIdentifier
	SourceSheetControlId?: string
}

#CategoricalAggregationFunction: "COUNT" | "DISTINCT_COUNT"

#CategoricalDimensionField: {
	Column: #ColumnIdentifier
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FormatConfiguration?: #StringFormatConfiguration
	HierarchyId?: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#CategoricalMeasureField: {
	AggregationFunction?: #CategoricalAggregationFunction
	Column: #ColumnIdentifier
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FormatConfiguration?: #StringFormatConfiguration
}

#CategoryDrillDownFilter: {
	CategoryValues: [...string & strings.MinRunes(0) & strings.MaxRunes(512)]
	Column: #ColumnIdentifier
}

#CategoryFilter: {
	Column: #ColumnIdentifier
	Configuration: #CategoryFilterConfiguration
	DefaultFilterControlConfiguration?: #DefaultFilterControlConfiguration
	FilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#CategoryFilterConfiguration: {
	CustomFilterConfiguration?: #CustomFilterConfiguration
	CustomFilterListConfiguration?: #CustomFilterListConfiguration
	FilterListConfiguration?: #FilterListConfiguration
}

#CategoryFilterMatchOperator: "EQUALS" | "DOES_NOT_EQUAL" | "CONTAINS" | "DOES_NOT_CONTAIN" | "STARTS_WITH" | "ENDS_WITH"

#CategoryFilterSelectAllOptions: "FILTER_ALL_VALUES"

#CategoryInnerFilter: {
	Column: #ColumnIdentifier
	Configuration: #CategoryFilterConfiguration
	DefaultFilterControlConfiguration?: #DefaultFilterControlConfiguration
}

#ChartAxisLabelOptions: {
	AxisLabelOptions?: [...#AxisLabelOptions]
	SortIconVisibility?: #Visibility
	Visibility?: #Visibility
}

#ClusterMarker: {
	SimpleClusterMarker?: #SimpleClusterMarker
}

#ClusterMarkerConfiguration: {
	ClusterMarker?: #ClusterMarker
}

#ColorFillType: "DISCRETE" | "GRADIENT"

#ColorScale: {
	ColorFillType: #ColorFillType
	Colors: [...#DataColor]
	NullValueColor?: #DataColor
}

#ColorsConfiguration: {
	CustomColors?: [...#CustomColor]
}

#ColumnConfiguration: {
	ColorsConfiguration?: #ColorsConfiguration
	Column: #ColumnIdentifier
	FormatConfiguration?: #FormatConfiguration
	Role?: #ColumnRole
}

#ColumnHierarchy: {
	DateTimeHierarchy?: #DateTimeHierarchy
	ExplicitHierarchy?: #ExplicitHierarchy
	PredefinedHierarchy?: #PredefinedHierarchy
}

#ColumnIdentifier: {
	ColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
	DataSetIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#ColumnRole: "DIMENSION" | "MEASURE"

#ColumnSort: {
	AggregationFunction?: #AggregationFunction
	Direction: #SortDirection
	SortBy: #ColumnIdentifier
}

#ColumnTooltipItem: {
	Aggregation?: #AggregationFunction
	Column: #ColumnIdentifier
	Label?: string
	TooltipTarget?: #TooltipTarget
	Visibility?: #Visibility
}

#ComboChartAggregatedFieldWells: {
	BarValues?: [...#MeasureField]
	Category?: [...#DimensionField]
	Colors?: [...#DimensionField]
	LineValues?: [...#MeasureField]
}

#ComboChartConfiguration: {
	BarDataLabels?: #DataLabelOptions
	BarsArrangement?: #BarsArrangement
	CategoryAxis?: #AxisDisplayOptions
	CategoryLabelOptions?: #ChartAxisLabelOptions
	ColorLabelOptions?: #ChartAxisLabelOptions
	FieldWells?: #ComboChartFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	LineDataLabels?: #DataLabelOptions
	PrimaryYAxisDisplayOptions?: #AxisDisplayOptions
	PrimaryYAxisLabelOptions?: #ChartAxisLabelOptions
	ReferenceLines?: [...#ReferenceLine]
	SecondaryYAxisDisplayOptions?: #AxisDisplayOptions
	SecondaryYAxisLabelOptions?: #ChartAxisLabelOptions
	SingleAxisOptions?: #SingleAxisOptions
	SortConfiguration?: #ComboChartSortConfiguration
	Tooltip?: #TooltipOptions
	VisualPalette?: #VisualPalette
}

#ComboChartFieldWells: {
	ComboChartAggregatedFieldWells?: #ComboChartAggregatedFieldWells
}

#ComboChartSortConfiguration: {
	CategoryItemsLimit?: #ItemsLimitConfiguration
	CategorySort?: [...#FieldSortOptions]
	ColorItemsLimit?: #ItemsLimitConfiguration
	ColorSort?: [...#FieldSortOptions]
}

#ComboChartVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #ComboChartConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#CommitMode: "AUTO" | "MANUAL"

#ComparisonConfiguration: {
	ComparisonFormat?: #ComparisonFormatConfiguration
	ComparisonMethod?: #ComparisonMethod
}

#ComparisonFormatConfiguration: {
	NumberDisplayFormatConfiguration?: #NumberDisplayFormatConfiguration
	PercentageDisplayFormatConfiguration?: #PercentageDisplayFormatConfiguration
}

#ComparisonMethod: "DIFFERENCE" | "PERCENT_DIFFERENCE" | "PERCENT"

#Computation: {
	Forecast?: #ForecastComputation
	GrowthRate?: #GrowthRateComputation
	MaximumMinimum?: #MaximumMinimumComputation
	MetricComparison?: #MetricComparisonComputation
	PeriodOverPeriod?: #PeriodOverPeriodComputation
	PeriodToDate?: #PeriodToDateComputation
	TopBottomMovers?: #TopBottomMoversComputation
	TopBottomRanked?: #TopBottomRankedComputation
	TotalAggregation?: #TotalAggregationComputation
	UniqueValues?: #UniqueValuesComputation
}

#ConditionalFormattingColor: {
	Gradient?: #ConditionalFormattingGradientColor
	Solid?: #ConditionalFormattingSolidColor
}

#ConditionalFormattingCustomIconCondition: {
	Color?: string & =~"^#[A-F0-9]{6}$"
	DisplayConfiguration?: #ConditionalFormattingIconDisplayConfiguration
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	IconOptions: #ConditionalFormattingCustomIconOptions
}

#ConditionalFormattingCustomIconOptions: {
	Icon?: #Icon
	UnicodeIcon?: string
}

#ConditionalFormattingGradientColor: {
	Color: #GradientColor
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#ConditionalFormattingIcon: {
	CustomCondition?: #ConditionalFormattingCustomIconCondition
	IconSet?: #ConditionalFormattingIconSet
}

#ConditionalFormattingIconDisplayConfiguration: {
	IconDisplayOption?: #ConditionalFormattingIconDisplayOption
}

#ConditionalFormattingIconDisplayOption: "ICON_ONLY"

#ConditionalFormattingIconSet: {
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	IconSetType?: #ConditionalFormattingIconSetType
}

#ConditionalFormattingIconSetType: "PLUS_MINUS" | "CHECK_X" | "THREE_COLOR_ARROW" | "THREE_GRAY_ARROW" | "CARET_UP_MINUS_DOWN" | "THREE_SHAPE" | "THREE_CIRCLE" | "FLAGS" | "BARS" | "FOUR_COLOR_ARROW" | "FOUR_GRAY_ARROW"

#ConditionalFormattingSolidColor: {
	Color?: string & =~"^#[A-F0-9]{6}$"
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#ContextMenuOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#ContributionAnalysisDefault: {
	ContributorDimensions: [...#ColumnIdentifier]
	MeasureFieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#CrossDatasetTypes: "ALL_DATASETS" | "SINGLE_DATASET"

#CurrencyDisplayFormatConfiguration: {
	DecimalPlacesConfiguration?: #DecimalPlacesConfiguration
	NegativeValueConfiguration?: #NegativeValueConfiguration
	NullValueFormatConfiguration?: #NullValueFormatConfiguration
	NumberScale?: #NumberScale
	Prefix?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	SeparatorConfiguration?: #NumericSeparatorConfiguration
	Suffix?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Symbol?: string & =~"^[A-Z]{3}$"
}

#CustomActionFilterOperation: {
	SelectedFieldsConfiguration: #FilterOperationSelectedFieldsConfiguration
	TargetVisualsConfiguration: #FilterOperationTargetVisualsConfiguration
}

#CustomActionNavigationOperation: {
	LocalNavigationConfiguration?: #LocalNavigationConfiguration
}

#CustomActionSetParametersOperation: {
	ParameterValueConfigurations: [...#SetParameterValueConfiguration]
}

#CustomActionURLOperation: {
	URLTarget: #URLTargetConfiguration
	URLTemplate: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#CustomColor: {
	Color: string & =~"^#[A-F0-9]{6}$"
	FieldValue?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	SpecialValue?: #SpecialValue
}

#CustomContentConfiguration: {
	ContentType?: #CustomContentType
	ContentUrl?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ImageScaling?: #CustomContentImageScalingConfiguration
	Interactions?: #VisualInteractionOptions
}

#CustomContentImageScalingConfiguration: "FIT_TO_HEIGHT" | "FIT_TO_WIDTH" | "DO_NOT_SCALE" | "SCALE_TO_VISUAL"

#CustomContentType: "IMAGE" | "OTHER_EMBEDDED_CONTENT"

#CustomContentVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #CustomContentConfiguration
	DataSetIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#CustomFilterConfiguration: {
	CategoryValue?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	MatchOperator: #CategoryFilterMatchOperator
	NullOption: #FilterNullOption
	ParameterName?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	SelectAllOptions?: #CategoryFilterSelectAllOptions
}

#CustomFilterListConfiguration: {
	CategoryValues?: [...string & strings.MinRunes(0) & strings.MaxRunes(512)]
	MatchOperator: #CategoryFilterMatchOperator
	NullOption: #FilterNullOption
	SelectAllOptions?: #CategoryFilterSelectAllOptions
}

#CustomNarrativeOptions: {
	Narrative: string & strings.MinRunes(0) & strings.MaxRunes(150000)
}

#CustomParameterValues: {
	DateTimeValues?: [...string]
	DecimalValues?: [...number]
	IntegerValues?: [...number]
	StringValues?: [...string]
}

#CustomValuesConfiguration: {
	CustomValues: #CustomParameterValues
	IncludeNullValue?: bool
}

#DashboardBehavior: "ENABLED" | "DISABLED"

#DashboardError: {
	// <p>Message.</p>
	Message?: string & =~"\\S"
	Type?: #DashboardErrorType
	// <p>Lists the violated entities that caused the dashboard error.</p>
	ViolatedEntities?: [...#Entity]
}

#DashboardErrorType: "ACCESS_DENIED" | "SOURCE_NOT_FOUND" | "DATA_SET_NOT_FOUND" | "INTERNAL_FAILURE" | "PARAMETER_VALUE_INCOMPATIBLE" | "PARAMETER_TYPE_INVALID" | "PARAMETER_NOT_FOUND" | "COLUMN_TYPE_MISMATCH" | "COLUMN_GEOGRAPHIC_ROLE_MISMATCH" | "COLUMN_REPLACEMENT_MISSING"

#DashboardPublishOptions: {
	AdHocFilteringOption?: #AdHocFilteringOption
	DataPointDrillUpDownOption?: #DataPointDrillUpDownOption
	DataPointMenuLabelOption?: #DataPointMenuLabelOption
	DataPointTooltipOption?: #DataPointTooltipOption
	DataQAEnabledOption?: #DataQAEnabledOption
	DataStoriesSharingOption?: #DataStoriesSharingOption
	ExecutiveSummaryOption?: #ExecutiveSummaryOption
	ExportToCSVOption?: #ExportToCSVOption
	ExportWithHiddenFieldsOption?: #ExportWithHiddenFieldsOption
	QuickSuiteActionsOption?: #QuickSuiteActionsOption
	SheetControlsOption?: #SheetControlsOption
	SheetLayoutElementMaximizationOption?: #SheetLayoutElementMaximizationOption
	VisualAxisSortOption?: #VisualAxisSortOption
	VisualMenuOption?: #VisualMenuOption
	VisualPublishOptions?: #DashboardVisualPublishOptions
}

#DashboardSourceEntity: {
	SourceTemplate?: #DashboardSourceTemplate
}

#DashboardSourceTemplate: {
	// <p>The Amazon Resource Name (ARN) of the resource.</p>
	Arn: string
	// <p>Dataset references.</p>
	DataSetReferences: [...#DataSetReference]
}

#DashboardUIState: "EXPANDED" | "COLLAPSED"

#DashboardVersion: {
	// <p>The Amazon Resource Name (ARN) of the resource.</p>
	Arn?: string
	// <p>The time that this dashboard version was created.</p>
	CreatedTime?: string
	// <p>The Amazon Resource Numbers (ARNs) for the datasets that are associated with this
	// version of the dashboard.</p>
	DataSetArns?: [...string]
	// <p>Description.</p>
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// <p>Errors associated with this dashboard version.</p>
	Errors?: [...#DashboardError]
	// <p>A list of the associated sheets with the unique identifier and name of each sheet.</p>
	Sheets?: [...#Sheet]
	// <p>Source entity ARN.</p>
	SourceEntityArn?: string
	Status?: #ResourceStatus
	// <p>The ARN of the theme associated with a version of the dashboard.</p>
	ThemeArn?: string
	// <p>Version number for this version of the dashboard.</p>
	VersionNumber?: number & >=1
}

#DashboardVersionDefinition: {
	AnalysisDefaults?: #AnalysisDefaults
	CalculatedFields?: [...#CalculatedField]
	ColumnConfigurations?: [...#ColumnConfiguration]
	DataSetIdentifierDeclarations: [...#DataSetIdentifierDeclaration]
	FilterGroups?: [...#FilterGroup]
	Options?: #AssetOptions
	ParameterDeclarations?: [...#ParameterDeclaration]
	Sheets?: [...#SheetDefinition]
	StaticFiles?: [...#StaticFile]
}

#DashboardVisualPublishOptions: {
	ExportHiddenFieldsOption?: #ExportHiddenFieldsOption
}

#DataBarsOptions: {
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	NegativeColor?: string & =~"^#[A-F0-9]{6}$"
	PositiveColor?: string & =~"^#[A-F0-9]{6}$"
}

#DataColor: {
	Color?: string & =~"^#[A-F0-9]{6}$"
	DataValue?: number
}

#DataFieldSeriesItem: {
	AxisBinding: #AxisBinding
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FieldValue?: string
	Settings?: #LineChartSeriesSettings
}

#DataLabelContent: "VALUE" | "PERCENT" | "VALUE_AND_PERCENT"

#DataLabelOptions: {
	CategoryLabelVisibility?: #Visibility
	DataLabelTypes?: [...#DataLabelType]
	LabelColor?: string & =~"^#[A-F0-9]{6}$"
	LabelContent?: #DataLabelContent
	LabelFontConfiguration?: #FontConfiguration
	MeasureLabelVisibility?: #Visibility
	Overlap?: #DataLabelOverlap
	Position?: #DataLabelPosition
	TotalsVisibility?: #Visibility
	Visibility?: #Visibility
}

#DataLabelOverlap: "DISABLE_OVERLAP" | "ENABLE_OVERLAP"

#DataLabelPosition: "INSIDE" | "OUTSIDE" | "LEFT" | "TOP" | "BOTTOM" | "RIGHT"

#DataLabelType: {
	DataPathLabelType?: #DataPathLabelType
	FieldLabelType?: #FieldLabelType
	MaximumLabelType?: #MaximumLabelType
	MinimumLabelType?: #MinimumLabelType
	RangeEndsLabelType?: #RangeEndsLabelType
}

#DataPathColor: {
	Color: string & =~"^#[A-F0-9]{6}$"
	Element: #DataPathValue
	TimeGranularity?: #TimeGranularity
}

#DataPathLabelType: {
	FieldId?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FieldValue?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	Visibility?: #Visibility
}

#DataPathSort: {
	Direction: #SortDirection
	SortPaths: [...#DataPathValue]
}

#DataPathType: {
	PivotTableDataPathType?: #PivotTableDataPathType
}

#DataPathValue: {
	DataPathType?: #DataPathType
	FieldId?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FieldValue?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
}

#DataPointDrillUpDownOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#DataPointMenuLabelOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#DataPointTooltipOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#DataQAEnabledOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#DataSetIdentifierDeclaration: {
	DataSetArn: string
	Identifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#DataSetReference: {
	// <p>Dataset Amazon Resource Name (ARN).</p>
	DataSetArn: string
	// <p>Dataset placeholder.</p>
	DataSetPlaceholder: string & =~"\\S"
}

#DataStoriesSharingOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#DateAggregationFunction: "COUNT" | "DISTINCT_COUNT" | "MIN" | "MAX"

#DateAxisOptions: {
	MissingDateVisibility?: #Visibility
}

#DateDimensionField: {
	Column: #ColumnIdentifier
	DateGranularity?: #TimeGranularity
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FormatConfiguration?: #DateTimeFormatConfiguration
	HierarchyId?: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#DateMeasureField: {
	AggregationFunction?: #DateAggregationFunction
	Column: #ColumnIdentifier
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FormatConfiguration?: #DateTimeFormatConfiguration
}

#DateTimeDefaultValues: {
	DynamicValue?: #DynamicDefaultValue
	RollingDate?: #RollingDateConfiguration
	StaticValues?: [...string]
}

#DateTimeFormatConfiguration: {
	DateTimeFormat?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	NullValueFormatConfiguration?: #NullValueFormatConfiguration
	NumericFormatConfiguration?: #NumericFormatConfiguration
}

#DateTimeHierarchy: {
	DrillDownFilters?: [...#DrillDownFilter]
	HierarchyId: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#DateTimeParameter: {
	// <p>A display name for the date-time parameter.</p>
	Name: string & =~"\\S"
	// <p>The values for the date-time parameter.</p>
	Values: [...string]
}

#DateTimeParameterDeclaration: {
	DefaultValues?: #DateTimeDefaultValues
	MappedDataSetParameters?: [...#MappedDataSetParameter]
	Name: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	TimeGranularity?: #TimeGranularity
	ValueWhenUnset?: #DateTimeValueWhenUnsetConfiguration
}

#DateTimePickerControlDisplayOptions: {
	DateIconVisibility?: #Visibility
	DateTimeFormat?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	HelperTextVisibility?: #Visibility
	InfoIconLabelOptions?: #SheetControlInfoIconLabelOptions
	TitleOptions?: #LabelOptions
}

#DateTimeValueWhenUnsetConfiguration: {
	CustomValue?: string
	ValueWhenUnsetOption?: #ValueWhenUnsetOption
}

#DayOfTheWeek: "SUNDAY" | "MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY"

#DecimalDefaultValues: {
	DynamicValue?: #DynamicDefaultValue
	StaticValues?: [...number]
}

#DecimalParameter: {
	// <p>A display name for the decimal parameter.</p>
	Name: string & =~"\\S"
	// <p>The values for the decimal parameter.</p>
	Values: [...number]
}

#DecimalParameterDeclaration: {
	DefaultValues?: #DecimalDefaultValues
	MappedDataSetParameters?: [...#MappedDataSetParameter]
	Name: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ParameterValueType: #ParameterValueType
	ValueWhenUnset?: #DecimalValueWhenUnsetConfiguration
}

#DecimalPlacesConfiguration: {
	DecimalPlaces: number & >=0 & <=20
}

#DecimalValueWhenUnsetConfiguration: {
	CustomValue?: number
	ValueWhenUnsetOption?: #ValueWhenUnsetOption
}

#DefaultDateTimePickerControlOptions: {
	CommitMode?: #CommitMode
	DisplayOptions?: #DateTimePickerControlDisplayOptions
	Type?: #SheetControlDateTimePickerType
}

#DefaultFilterControlConfiguration: {
	ControlOptions: #DefaultFilterControlOptions
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#DefaultFilterControlOptions: {
	DefaultDateTimePickerOptions?: #DefaultDateTimePickerControlOptions
	DefaultDropdownOptions?: #DefaultFilterDropDownControlOptions
	DefaultListOptions?: #DefaultFilterListControlOptions
	DefaultRelativeDateTimeOptions?: #DefaultRelativeDateTimeControlOptions
	DefaultSliderOptions?: #DefaultSliderControlOptions
	DefaultTextAreaOptions?: #DefaultTextAreaControlOptions
	DefaultTextFieldOptions?: #DefaultTextFieldControlOptions
}

#DefaultFilterDropDownControlOptions: {
	CommitMode?: #CommitMode
	DisplayOptions?: #DropDownControlDisplayOptions
	SelectableValues?: #FilterSelectableValues
	Type?: #SheetControlListType
}

#DefaultFilterListControlOptions: {
	DisplayOptions?: #ListControlDisplayOptions
	SelectableValues?: #FilterSelectableValues
	Type?: #SheetControlListType
}

#DefaultFreeFormLayoutConfiguration: {
	CanvasSizeOptions: #FreeFormLayoutCanvasSizeOptions
}

#DefaultGridLayoutConfiguration: {
	CanvasSizeOptions: #GridLayoutCanvasSizeOptions
}

#DefaultInteractiveLayoutConfiguration: {
	FreeForm?: #DefaultFreeFormLayoutConfiguration
	Grid?: #DefaultGridLayoutConfiguration
}

#DefaultNewSheetConfiguration: {
	InteractiveLayoutConfiguration?: #DefaultInteractiveLayoutConfiguration
	PaginatedLayoutConfiguration?: #DefaultPaginatedLayoutConfiguration
	SheetContentType?: #SheetContentType
}

#DefaultPaginatedLayoutConfiguration: {
	SectionBased?: #DefaultSectionBasedLayoutConfiguration
}

#DefaultRelativeDateTimeControlOptions: {
	CommitMode?: #CommitMode
	DisplayOptions?: #RelativeDateTimeControlDisplayOptions
}

#DefaultSectionBasedLayoutConfiguration: {
	CanvasSizeOptions: #SectionBasedLayoutCanvasSizeOptions
}

#DefaultSliderControlOptions: {
	DisplayOptions?: #SliderControlDisplayOptions
	MaximumValue: number
	MinimumValue: number
	StepSize: number
	Type?: #SheetControlSliderType
}

#DefaultTextAreaControlOptions: {
	Delimiter?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	DisplayOptions?: #TextAreaControlDisplayOptions
}

#DefaultTextFieldControlOptions: {
	DisplayOptions?: #TextFieldControlDisplayOptions
}

#DestinationParameterValueConfiguration: {
	CustomValuesConfiguration?: #CustomValuesConfiguration
	SelectAllValueOptions?: #SelectAllValueOptions
	SourceColumn?: #ColumnIdentifier
	SourceField?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceParameterName?: string
}

#DigitGroupingStyle: "DEFAULT" | "LAKHS"

#DimensionField: {
	CategoricalDimensionField?: #CategoricalDimensionField
	DateDimensionField?: #DateDimensionField
	NumericalDimensionField?: #NumericalDimensionField
}

#DonutCenterOptions: {
	LabelVisibility?: #Visibility
}

#DonutOptions: {
	ArcOptions?: #ArcOptions
	DonutCenterOptions?: #DonutCenterOptions
}

#DrillDownFilter: {
	CategoryFilter?: #CategoryDrillDownFilter
	NumericEqualityFilter?: #NumericEqualityDrillDownFilter
	TimeRangeFilter?: #TimeRangeDrillDownFilter
}

#DropDownControlDisplayOptions: {
	InfoIconLabelOptions?: #SheetControlInfoIconLabelOptions
	SelectAllOptions?: #ListControlSelectAllOptions
	TitleOptions?: #LabelOptions
}

#DynamicDefaultValue: {
	DefaultValueColumn: #ColumnIdentifier
	GroupNameColumn?: #ColumnIdentifier
	UserNameColumn?: #ColumnIdentifier
}

#EmptyVisual: {
	Actions?: [...#VisualCustomAction]
	DataSetIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#Entity: {
	Path?: string & =~"\\S"
}

#ExcludePeriodConfiguration: {
	Amount: number
	Granularity: #TimeGranularity
	Status?: #WidgetStatus
}

#ExecutiveSummaryOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#ExplicitHierarchy: {
	Columns: [...#ColumnIdentifier]
	DrillDownFilters?: [...#DrillDownFilter]
	HierarchyId: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#ExportHiddenFieldsOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#ExportToCSVOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#ExportWithHiddenFieldsOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#FieldBasedTooltip: {
	AggregationVisibility?: #Visibility
	TooltipFields?: [...#TooltipItem]
	TooltipTitleType?: #TooltipTitleType
}

#FieldLabelType: {
	FieldId?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	Visibility?: #Visibility
}

#FieldSeriesItem: {
	AxisBinding: #AxisBinding
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	Settings?: #LineChartSeriesSettings
}

#FieldSort: {
	Direction: #SortDirection
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#FieldSortOptions: {
	ColumnSort?: #ColumnSort
	FieldSort?: #FieldSort
}

#FieldTooltipItem: {
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	Label?: string
	TooltipTarget?: #TooltipTarget
	Visibility?: #Visibility
}

#FilledMapAggregatedFieldWells: {
	Geospatial?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#FilledMapConditionalFormatting: {
	ConditionalFormattingOptions: [...#FilledMapConditionalFormattingOption]
}

#FilledMapConditionalFormattingOption: {
	Shape: #FilledMapShapeConditionalFormatting
}

#FilledMapConfiguration: {
	FieldWells?: #FilledMapFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	MapStyleOptions?: #GeospatialMapStyleOptions
	SortConfiguration?: #FilledMapSortConfiguration
	Tooltip?: #TooltipOptions
	WindowOptions?: #GeospatialWindowOptions
}

#FilledMapFieldWells: {
	FilledMapAggregatedFieldWells?: #FilledMapAggregatedFieldWells
}

#FilledMapShapeConditionalFormatting: {
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	Format?: #ShapeConditionalFormat
}

#FilledMapSortConfiguration: {
	CategorySort?: [...#FieldSortOptions]
}

#FilledMapVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #FilledMapConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	ConditionalFormatting?: #FilledMapConditionalFormatting
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#Filter: {
	CategoryFilter?: #CategoryFilter
	NestedFilter?: #NestedFilter
	NumericEqualityFilter?: #NumericEqualityFilter
	NumericRangeFilter?: #NumericRangeFilter
	RelativeDatesFilter?: #RelativeDatesFilter
	TimeEqualityFilter?: #TimeEqualityFilter
	TimeRangeFilter?: #TimeRangeFilter
	TopBottomFilter?: #TopBottomFilter
}

#FilterControl: {
	CrossSheet?: #FilterCrossSheetControl
	DateTimePicker?: #FilterDateTimePickerControl
	Dropdown?: #FilterDropDownControl
	List?: #FilterListControl
	RelativeDateTime?: #FilterRelativeDateTimeControl
	Slider?: #FilterSliderControl
	TextArea?: #FilterTextAreaControl
	TextField?: #FilterTextFieldControl
}

#FilterCrossSheetControl: {
	CascadingControlConfiguration?: #CascadingControlConfiguration
	FilterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceFilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#FilterDateTimePickerControl: {
	CommitMode?: #CommitMode
	DisplayOptions?: #DateTimePickerControlDisplayOptions
	FilterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceFilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Type?: #SheetControlDateTimePickerType
}

#FilterDropDownControl: {
	CascadingControlConfiguration?: #CascadingControlConfiguration
	CommitMode?: #CommitMode
	DisplayOptions?: #DropDownControlDisplayOptions
	FilterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SelectableValues?: #FilterSelectableValues
	SourceFilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Type?: #SheetControlListType
}

#FilterGroup: {
	CrossDataset: #CrossDatasetTypes
	FilterGroupId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Filters: [...#Filter]
	ScopeConfiguration: #FilterScopeConfiguration
	Status?: #WidgetStatus
}

#FilterListConfiguration: {
	CategoryValues?: [...string & strings.MinRunes(0) & strings.MaxRunes(512)]
	MatchOperator: #CategoryFilterMatchOperator
	NullOption?: #FilterNullOption
	SelectAllOptions?: #CategoryFilterSelectAllOptions
}

#FilterListControl: {
	CascadingControlConfiguration?: #CascadingControlConfiguration
	DisplayOptions?: #ListControlDisplayOptions
	FilterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SelectableValues?: #FilterSelectableValues
	SourceFilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Type?: #SheetControlListType
}

#FilterNullOption: "ALL_VALUES" | "NULLS_ONLY" | "NON_NULLS_ONLY"

#FilterOperationSelectedFieldsConfiguration: {
	// <p>The selected columns of a dataset.</p>
	SelectedColumns?: [...#ColumnIdentifier]
	SelectedFieldOptions?: #SelectedFieldOptions
	SelectedFields?: [...string & strings.MinRunes(1) & strings.MaxRunes(512)]
}

#FilterOperationTargetVisualsConfiguration: {
	SameSheetTargetVisualConfiguration?: #SameSheetTargetVisualConfiguration
}

#FilterRelativeDateTimeControl: {
	CommitMode?: #CommitMode
	DisplayOptions?: #RelativeDateTimeControlDisplayOptions
	FilterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceFilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#FilterScopeConfiguration: {
	AllSheets?: #AllSheetsFilterScopeConfiguration
	SelectedSheets?: #SelectedSheetsFilterScopeConfiguration
}

#FilterSelectableValues: {
	Values?: [...string]
}

#FilterSliderControl: {
	DisplayOptions?: #SliderControlDisplayOptions
	FilterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	MaximumValue: number
	MinimumValue: number
	SourceFilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	StepSize: number
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Type?: #SheetControlSliderType
}

#FilterTextAreaControl: {
	Delimiter?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	DisplayOptions?: #TextAreaControlDisplayOptions
	FilterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceFilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#FilterTextFieldControl: {
	DisplayOptions?: #TextFieldControlDisplayOptions
	FilterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceFilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#FilterVisualScope: "ALL_VISUALS" | "SELECTED_VISUALS"

#FontConfiguration: {
	FontColor?: string & =~"^#[A-F0-9]{6}$"
	FontDecoration?: #FontDecoration
	FontFamily?: string
	FontSize?: #FontSize
	FontStyle?: #FontStyle
	FontWeight?: #FontWeight
}

#FontDecoration: "UNDERLINE" | "NONE"

#FontSize: {
	// String based length that is composed of value and unit in px
	Absolute?: string
	Relative?: #RelativeFontSize
}

#FontStyle: "NORMAL" | "ITALIC"

#FontWeight: {
	Name?: #FontWeightName
}

#FontWeightName: "NORMAL" | "BOLD"

#ForecastComputation: {
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	CustomSeasonalityValue?: number & >=1 & <=180
	LowerBoundary?: number
	Name?: string
	PeriodsBackward?: number & >=0 & <=1000
	PeriodsForward?: number & >=1 & <=1000
	PredictionInterval?: number & >=50 & <=95
	Seasonality?: #ForecastComputationSeasonality
	Time?: #DimensionField
	UpperBoundary?: number
	Value?: #MeasureField
}

#ForecastComputationSeasonality: "AUTOMATIC" | "CUSTOM"

#ForecastConfiguration: {
	ForecastProperties?: #TimeBasedForecastProperties
	Scenario?: #ForecastScenario
}

#ForecastScenario: {
	WhatIfPointScenario?: #WhatIfPointScenario
	WhatIfRangeScenario?: #WhatIfRangeScenario
}

#FormatConfiguration: {
	DateTimeFormatConfiguration?: #DateTimeFormatConfiguration
	NumberFormatConfiguration?: #NumberFormatConfiguration
	StringFormatConfiguration?: #StringFormatConfiguration
}

#FreeFormLayoutCanvasSizeOptions: {
	ScreenCanvasSizeOptions?: #FreeFormLayoutScreenCanvasSizeOptions
}

#FreeFormLayoutConfiguration: {
	CanvasSizeOptions?: #FreeFormLayoutCanvasSizeOptions
	Elements: [...#FreeFormLayoutElement]
}

#FreeFormLayoutElement: {
	BackgroundStyle?: #FreeFormLayoutElementBackgroundStyle
	BorderRadius?: string & strings.MinRunes(0) & strings.MaxRunes(50)
	BorderStyle?: #FreeFormLayoutElementBorderStyle
	ElementId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	ElementType: #LayoutElementType
	// String based length that is composed of value and unit in px
	Height: string
	LoadingAnimation?: #LoadingAnimation
	Padding?: string & strings.MinRunes(0) & strings.MaxRunes(200)
	RenderingRules?: [...#SheetElementRenderingRule]
	SelectedBorderStyle?: #FreeFormLayoutElementBorderStyle
	Visibility?: #Visibility
	// String based length that is composed of value and unit in px
	Width: string
	// String based length that is composed of value and unit in px
	XAxisLocation: string
	// String based length that is composed of value and unit in px with Integer.MAX_VALUE as maximum value
	YAxisLocation: string
}

#FreeFormLayoutElementBackgroundStyle: {
	Color?: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	Visibility?: #Visibility
}

#FreeFormLayoutElementBorderStyle: {
	Color?: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	Visibility?: #Visibility
	// String to encapsulate the most generic way Width can be formatted with whatever units (px, em etc)
	Width?: string & strings.MinRunes(0) & strings.MaxRunes(50)
}

#FreeFormLayoutScreenCanvasSizeOptions: {
	// String based length that is composed of value and unit in px
	OptimizedViewPortWidth: string
}

#FreeFormSectionLayoutConfiguration: {
	Elements: [...#FreeFormLayoutElement]
}

#FunnelChartAggregatedFieldWells: {
	Category?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#FunnelChartConfiguration: {
	CategoryLabelOptions?: #ChartAxisLabelOptions
	DataLabelOptions?: #FunnelChartDataLabelOptions
	FieldWells?: #FunnelChartFieldWells
	Interactions?: #VisualInteractionOptions
	SortConfiguration?: #FunnelChartSortConfiguration
	Tooltip?: #TooltipOptions
	ValueLabelOptions?: #ChartAxisLabelOptions
	VisualPalette?: #VisualPalette
}

#FunnelChartDataLabelOptions: {
	CategoryLabelVisibility?: #Visibility
	LabelColor?: string & =~"^#[A-F0-9]{6}$"
	LabelFontConfiguration?: #FontConfiguration
	MeasureDataLabelStyle?: #FunnelChartMeasureDataLabelStyle
	MeasureLabelVisibility?: #Visibility
	Position?: #DataLabelPosition
	Visibility?: #Visibility
}

#FunnelChartFieldWells: {
	FunnelChartAggregatedFieldWells?: #FunnelChartAggregatedFieldWells
}

#FunnelChartMeasureDataLabelStyle: "VALUE_ONLY" | "PERCENTAGE_BY_FIRST_STAGE" | "PERCENTAGE_BY_PREVIOUS_STAGE" | "VALUE_AND_PERCENTAGE_BY_FIRST_STAGE" | "VALUE_AND_PERCENTAGE_BY_PREVIOUS_STAGE"

#FunnelChartSortConfiguration: {
	CategoryItemsLimit?: #ItemsLimitConfiguration
	CategorySort?: [...#FieldSortOptions]
}

#FunnelChartVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #FunnelChartConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#GaugeChartArcConditionalFormatting: {
	ForegroundColor?: #ConditionalFormattingColor
}

#GaugeChartColorConfiguration: {
	BackgroundColor?: string & =~"^#[A-F0-9]{6}$"
	ForegroundColor?: string & =~"^#[A-F0-9]{6}$"
}

#GaugeChartConditionalFormatting: {
	ConditionalFormattingOptions?: [...#GaugeChartConditionalFormattingOption]
}

#GaugeChartConditionalFormattingOption: {
	Arc?: #GaugeChartArcConditionalFormatting
	PrimaryValue?: #GaugeChartPrimaryValueConditionalFormatting
}

#GaugeChartConfiguration: {
	ColorConfiguration?: #GaugeChartColorConfiguration
	DataLabels?: #DataLabelOptions
	FieldWells?: #GaugeChartFieldWells
	GaugeChartOptions?: #GaugeChartOptions
	Interactions?: #VisualInteractionOptions
	TooltipOptions?: #TooltipOptions
	VisualPalette?: #VisualPalette
}

#GaugeChartFieldWells: {
	TargetValues?: [...#MeasureField]
	Values?: [...#MeasureField]
}

#GaugeChartOptions: {
	Arc?: #ArcConfiguration
	ArcAxis?: #ArcAxisConfiguration
	Comparison?: #ComparisonConfiguration
	PrimaryValueDisplayType?: #PrimaryValueDisplayType
	PrimaryValueFontConfiguration?: #FontConfiguration
}

#GaugeChartPrimaryValueConditionalFormatting: {
	Icon?: #ConditionalFormattingIcon
	TextColor?: #ConditionalFormattingColor
}

#GaugeChartVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #GaugeChartConfiguration
	ConditionalFormatting?: #GaugeChartConditionalFormatting
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#GeospatialCategoricalColor: {
	CategoryDataColors: [...#GeospatialCategoricalDataColor]
	DefaultOpacity?: number & >=0 & <=1
	NullDataSettings?: #GeospatialNullDataSettings
	NullDataVisibility?: #Visibility
}

#GeospatialCategoricalDataColor: {
	Color: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	DataValue: string
}

#GeospatialCircleRadius: {
	Radius?: number & >=0
}

#GeospatialCircleSymbolStyle: {
	CircleRadius?: #GeospatialCircleRadius
	FillColor?: #GeospatialColor
	StrokeColor?: #GeospatialColor
	StrokeWidth?: #GeospatialLineWidth
}

#GeospatialColor: {
	Categorical?: #GeospatialCategoricalColor
	Gradient?: #GeospatialGradientColor
	Solid?: #GeospatialSolidColor
}

#GeospatialColorState: "ENABLED" | "DISABLED"

#GeospatialCoordinateBounds: {
	East: number & >=-1800 & <=1800
	North: number & >=-90 & <=90
	South: number & >=-90 & <=90
	West: number & >=-1800 & <=1800
}

#GeospatialDataSourceItem: {
	StaticFileDataSource?: #GeospatialStaticFileSource
}

#GeospatialGradientColor: {
	DefaultOpacity?: number & >=0 & <=1
	NullDataSettings?: #GeospatialNullDataSettings
	NullDataVisibility?: #Visibility
	StepColors: [...#GeospatialGradientStepColor]
}

#GeospatialGradientStepColor: {
	Color: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	DataValue: number
}

#GeospatialHeatmapColorScale: {
	Colors?: [...#GeospatialHeatmapDataColor]
}

#GeospatialHeatmapConfiguration: {
	HeatmapColor?: #GeospatialHeatmapColorScale
}

#GeospatialHeatmapDataColor: {
	Color: string & =~"^#[A-F0-9]{6}$"
}

#GeospatialLayerColorField: {
	ColorDimensionsFields?: [...#DimensionField]
	ColorValuesFields?: [...#MeasureField]
}

#GeospatialLayerDefinition: {
	LineLayer?: #GeospatialLineLayer
	PointLayer?: #GeospatialPointLayer
	PolygonLayer?: #GeospatialPolygonLayer
}

#GeospatialLayerItem: {
	Actions?: [...#LayerCustomAction]
	DataSource?: #GeospatialDataSourceItem
	JoinDefinition?: #GeospatialLayerJoinDefinition
	Label?: string
	LayerDefinition?: #GeospatialLayerDefinition
	LayerId: string
	LayerType?: #GeospatialLayerType
	Tooltip?: #TooltipOptions
	Visibility?: #Visibility
}

#GeospatialLayerJoinDefinition: {
	ColorField?: #GeospatialLayerColorField
	DatasetKeyField?: #UnaggregatedField
	ShapeKeyField?: string
}

#GeospatialLayerMapConfiguration: {
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	MapLayers?: [...#GeospatialLayerItem]
	MapState?: #GeospatialMapState
	MapStyle?: #GeospatialMapStyle
}

#GeospatialLayerType: "POINT" | "LINE" | "POLYGON"

#GeospatialLineLayer: {
	Style: #GeospatialLineStyle
}

#GeospatialLineStyle: {
	LineSymbolStyle?: #GeospatialLineSymbolStyle
}

#GeospatialLineSymbolStyle: {
	FillColor?: #GeospatialColor
	LineWidth?: #GeospatialLineWidth
}

#GeospatialLineWidth: {
	LineWidth?: number & >=0
}

#GeospatialMapAggregatedFieldWells: {
	Colors?: [...#DimensionField]
	Geospatial?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#GeospatialMapConfiguration: {
	FieldWells?: #GeospatialMapFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	MapStyleOptions?: #GeospatialMapStyleOptions
	PointStyleOptions?: #GeospatialPointStyleOptions
	Tooltip?: #TooltipOptions
	VisualPalette?: #VisualPalette
	WindowOptions?: #GeospatialWindowOptions
}

#GeospatialMapFieldWells: {
	GeospatialMapAggregatedFieldWells?: #GeospatialMapAggregatedFieldWells
}

#GeospatialMapNavigation: "ENABLED" | "DISABLED"

#GeospatialMapState: {
	Bounds?: #GeospatialCoordinateBounds
	MapNavigation?: #GeospatialMapNavigation
}

#GeospatialMapStyle: {
	BackgroundColor?: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	BaseMapStyle?: #BaseMapStyleType
	BaseMapVisibility?: #Visibility
}

#GeospatialMapStyleOptions: {
	BaseMapStyle?: #BaseMapStyleType
}

#GeospatialMapVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #GeospatialMapConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#GeospatialNullDataSettings: {
	SymbolStyle: #GeospatialNullSymbolStyle
}

#GeospatialNullSymbolStyle: {
	FillColor?: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	StrokeColor?: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	StrokeWidth?: number & >=0
}

#GeospatialPointLayer: {
	Style: #GeospatialPointStyle
}

#GeospatialPointStyle: {
	CircleSymbolStyle?: #GeospatialCircleSymbolStyle
}

#GeospatialPointStyleOptions: {
	ClusterMarkerConfiguration?: #ClusterMarkerConfiguration
	HeatmapConfiguration?: #GeospatialHeatmapConfiguration
	SelectedPointStyle?: #GeospatialSelectedPointStyle
}

#GeospatialPolygonLayer: {
	Style: #GeospatialPolygonStyle
}

#GeospatialPolygonStyle: {
	PolygonSymbolStyle?: #GeospatialPolygonSymbolStyle
}

#GeospatialPolygonSymbolStyle: {
	FillColor?: #GeospatialColor
	StrokeColor?: #GeospatialColor
	StrokeWidth?: #GeospatialLineWidth
}

#GeospatialSelectedPointStyle: "POINT" | "CLUSTER" | "HEATMAP"

#GeospatialSolidColor: {
	Color: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	State?: #GeospatialColorState
}

#GeospatialStaticFileSource: {
	StaticFileId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#GeospatialWindowOptions: {
	Bounds?: #GeospatialCoordinateBounds
	MapZoomMode?: #MapZoomMode
}

#GlobalTableBorderOptions: {
	SideSpecificBorder?: #TableSideBorderOptions
	UniformBorder?: #TableBorderOptions
}

#GradientColor: {
	Stops?: [...#GradientStop]
}

#GradientStop: {
	Color?: string & =~"^#[A-F0-9]{6}$"
	DataValue?: number
	GradientOffset: number
}

#GridLayoutCanvasSizeOptions: {
	ScreenCanvasSizeOptions?: #GridLayoutScreenCanvasSizeOptions
}

#GridLayoutConfiguration: {
	CanvasSizeOptions?: #GridLayoutCanvasSizeOptions
	Elements: [...#GridLayoutElement]
}

#GridLayoutElement: {
	BackgroundStyle?: #GridLayoutElementBackgroundStyle
	BorderRadius?: string & strings.MinRunes(0) & strings.MaxRunes(50)
	BorderStyle?: #GridLayoutElementBorderStyle
	ColumnIndex?: number & >=0 & <=35
	ColumnSpan: number & >=1 & <=36
	ElementId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	ElementType: #LayoutElementType
	LoadingAnimation?: #LoadingAnimation
	Padding?: string & strings.MinRunes(0) & strings.MaxRunes(200)
	RowIndex?: number & >=0 & <=9009
	RowSpan: number & >=1 & <=21
	SelectedBorderStyle?: #GridLayoutElementBorderStyle
}

#GridLayoutElementBackgroundStyle: {
	Color?: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	Visibility?: #Visibility
}

#GridLayoutElementBorderStyle: {
	Color?: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	Visibility?: #Visibility
	// String to encapsulate the most generic way Width can be formatted with whatever units (px, em etc)
	Width?: string & strings.MinRunes(0) & strings.MaxRunes(50)
}

#GridLayoutScreenCanvasSizeOptions: {
	// String based length that is composed of value and unit in px
	OptimizedViewPortWidth?: string
	ResizeOption: #ResizeOption
}

#GrowthRateComputation: {
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name?: string
	PeriodSize?: number & >=2 & <=52
	Time?: #DimensionField
	Value?: #MeasureField
}

#HeaderFooterSectionConfiguration: {
	Layout: #SectionLayoutConfiguration
	SectionId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Style?: #SectionStyle
}

#HeatMapAggregatedFieldWells: {
	Columns?: [...#DimensionField]
	Rows?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#HeatMapConfiguration: {
	ColorScale?: #ColorScale
	ColumnLabelOptions?: #ChartAxisLabelOptions
	DataLabels?: #DataLabelOptions
	FieldWells?: #HeatMapFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	RowLabelOptions?: #ChartAxisLabelOptions
	SortConfiguration?: #HeatMapSortConfiguration
	Tooltip?: #TooltipOptions
}

#HeatMapFieldWells: {
	HeatMapAggregatedFieldWells?: #HeatMapAggregatedFieldWells
}

#HeatMapSortConfiguration: {
	HeatMapColumnItemsLimitConfiguration?: #ItemsLimitConfiguration
	HeatMapColumnSort?: [...#FieldSortOptions]
	HeatMapRowItemsLimitConfiguration?: #ItemsLimitConfiguration
	HeatMapRowSort?: [...#FieldSortOptions]
}

#HeatMapVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #HeatMapConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#HistogramAggregatedFieldWells: {
	Values?: [...#MeasureField]
}

#HistogramBinOptions: {
	BinCount?: #BinCountOptions
	BinWidth?: #BinWidthOptions
	SelectedBinType?: #HistogramBinType
	StartValue?: number
}

#HistogramBinType: "BIN_COUNT" | "BIN_WIDTH"

#HistogramConfiguration: {
	BinOptions?: #HistogramBinOptions
	DataLabels?: #DataLabelOptions
	FieldWells?: #HistogramFieldWells
	Interactions?: #VisualInteractionOptions
	Tooltip?: #TooltipOptions
	VisualPalette?: #VisualPalette
	XAxisDisplayOptions?: #AxisDisplayOptions
	XAxisLabelOptions?: #ChartAxisLabelOptions
	YAxisDisplayOptions?: #AxisDisplayOptions
}

#HistogramFieldWells: {
	HistogramAggregatedFieldWells?: #HistogramAggregatedFieldWells
}

#HistogramVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #HistogramConfiguration
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#HorizontalTextAlignment: "LEFT" | "CENTER" | "RIGHT" | "AUTO"

#Icon: "CARET_UP" | "CARET_DOWN" | "PLUS" | "MINUS" | "ARROW_UP" | "ARROW_DOWN" | "ARROW_LEFT" | "ARROW_UP_LEFT" | "ARROW_DOWN_LEFT" | "ARROW_RIGHT" | "ARROW_UP_RIGHT" | "ARROW_DOWN_RIGHT" | "FACE_UP" | "FACE_DOWN" | "FACE_FLAT" | "ONE_BAR" | "TWO_BAR" | "THREE_BAR" | "CIRCLE" | "TRIANGLE" | "SQUARE" | "FLAG" | "THUMBS_UP" | "THUMBS_DOWN" | "CHECKMARK" | "X"

#ImageCustomAction: {
	ActionOperations: [...#ImageCustomActionOperation]
	CustomActionId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Status?: #WidgetStatus
	Trigger: #ImageCustomActionTrigger
}

#ImageCustomActionOperation: {
	NavigationOperation?: #CustomActionNavigationOperation
	SetParametersOperation?: #CustomActionSetParametersOperation
	URLOperation?: #CustomActionURLOperation
}

#ImageCustomActionTrigger: "CLICK" | "MENU"

#ImageInteractionOptions: {
	ImageMenuOption?: #ImageMenuOption
}

#ImageMenuOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#ImageStaticFile: {
	Source?: #StaticFileSource
	StaticFileId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#InnerFilter: {
	CategoryInnerFilter?: #CategoryInnerFilter
}

#InsightConfiguration: {
	Computations?: [...#Computation]
	CustomNarrative?: #CustomNarrativeOptions
	Interactions?: #VisualInteractionOptions
}

#InsightVisual: {
	Actions?: [...#VisualCustomAction]
	DataSetIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	InsightConfiguration?: #InsightConfiguration
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#IntegerDefaultValues: {
	DynamicValue?: #DynamicDefaultValue
	StaticValues?: [...number]
}

#IntegerParameter: {
	// <p>The name of the integer parameter.</p>
	Name: string & =~"\\S"
	// <p>The values for the integer parameter.</p>
	Values: [...number]
}

#IntegerParameterDeclaration: {
	DefaultValues?: #IntegerDefaultValues
	MappedDataSetParameters?: [...#MappedDataSetParameter]
	Name: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ParameterValueType: #ParameterValueType
	ValueWhenUnset?: #IntegerValueWhenUnsetConfiguration
}

#IntegerValueWhenUnsetConfiguration: {
	CustomValue?: number
	ValueWhenUnsetOption?: #ValueWhenUnsetOption
}

#ItemsLimitConfiguration: {
	ItemsLimit?: number
	OtherCategories?: #OtherCategories
}

#KPIActualValueConditionalFormatting: {
	Icon?: #ConditionalFormattingIcon
	TextColor?: #ConditionalFormattingColor
}

#KPIComparisonValueConditionalFormatting: {
	Icon?: #ConditionalFormattingIcon
	TextColor?: #ConditionalFormattingColor
}

#KPIConditionalFormatting: {
	ConditionalFormattingOptions?: [...#KPIConditionalFormattingOption]
}

#KPIConditionalFormattingOption: {
	ActualValue?: #KPIActualValueConditionalFormatting
	ComparisonValue?: #KPIComparisonValueConditionalFormatting
	PrimaryValue?: #KPIPrimaryValueConditionalFormatting
	ProgressBar?: #KPIProgressBarConditionalFormatting
}

#KPIConfiguration: {
	FieldWells?: #KPIFieldWells
	Interactions?: #VisualInteractionOptions
	KPIOptions?: #KPIOptions
	SortConfiguration?: #KPISortConfiguration
}

#KPIFieldWells: {
	TargetValues?: [...#MeasureField]
	TrendGroups?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#KPIOptions: {
	Comparison?: #ComparisonConfiguration
	PrimaryValueDisplayType?: #PrimaryValueDisplayType
	PrimaryValueFontConfiguration?: #FontConfiguration
	ProgressBar?: #ProgressBarOptions
	SecondaryValue?: #SecondaryValueOptions
	SecondaryValueFontConfiguration?: #FontConfiguration
	Sparkline?: #KPISparklineOptions
	TrendArrows?: #TrendArrowOptions
	VisualLayoutOptions?: #KPIVisualLayoutOptions
}

#KPIPrimaryValueConditionalFormatting: {
	Icon?: #ConditionalFormattingIcon
	TextColor?: #ConditionalFormattingColor
}

#KPIProgressBarConditionalFormatting: {
	ForegroundColor?: #ConditionalFormattingColor
}

#KPISortConfiguration: {
	TrendGroupSort?: [...#FieldSortOptions]
}

#KPISparklineOptions: {
	Color?: string & =~"^#[A-F0-9]{6}$"
	TooltipVisibility?: #Visibility
	Type: #KPISparklineType
	Visibility?: #Visibility
}

#KPISparklineType: "LINE" | "AREA"

#KPIVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #KPIConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	ConditionalFormatting?: #KPIConditionalFormatting
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#KPIVisualLayoutOptions: {
	StandardLayout?: #KPIVisualStandardLayout
}

#KPIVisualStandardLayout: {
	Type: #KPIVisualStandardLayoutType
}

#KPIVisualStandardLayoutType: "CLASSIC" | "VERTICAL"

#LabelOptions: {
	CustomLabel?: string
	FontConfiguration?: #FontConfiguration
	Visibility?: #Visibility
}

#LayerCustomAction: {
	ActionOperations: [...#LayerCustomActionOperation]
	CustomActionId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Status?: #WidgetStatus
	Trigger: #LayerCustomActionTrigger
}

#LayerCustomActionOperation: {
	FilterOperation?: #CustomActionFilterOperation
	NavigationOperation?: #CustomActionNavigationOperation
	SetParametersOperation?: #CustomActionSetParametersOperation
	URLOperation?: #CustomActionURLOperation
}

#LayerCustomActionTrigger: "DATA_POINT_CLICK" | "DATA_POINT_MENU"

#LayerMapVisual: {
	ChartConfiguration?: #GeospatialLayerMapConfiguration
	DataSetIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#Layout: {
	Configuration: #LayoutConfiguration
}

#LayoutConfiguration: {
	FreeFormLayout?: #FreeFormLayoutConfiguration
	GridLayout?: #GridLayoutConfiguration
	SectionBasedLayout?: #SectionBasedLayoutConfiguration
}

#LayoutElementType: "VISUAL" | "FILTER_CONTROL" | "PARAMETER_CONTROL" | "TEXT_BOX" | "IMAGE"

#LegendOptions: {
	// String based length that is composed of value and unit in px
	Height?: string
	Position?: #LegendPosition
	Title?: #LabelOptions
	ValueFontConfiguration?: #FontConfiguration
	Visibility?: #Visibility
	// String based length that is composed of value and unit in px
	Width?: string
}

#LegendPosition: "AUTO" | "RIGHT" | "BOTTOM" | "TOP"

#LineChartAggregatedFieldWells: {
	Category?: [...#DimensionField]
	Colors?: [...#DimensionField]
	SmallMultiples?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#LineChartConfiguration: {
	ContributionAnalysisDefaults?: [...#ContributionAnalysisDefault]
	DataLabels?: #DataLabelOptions
	DefaultSeriesSettings?: #LineChartDefaultSeriesSettings
	FieldWells?: #LineChartFieldWells
	ForecastConfigurations?: [...#ForecastConfiguration]
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	PrimaryYAxisDisplayOptions?: #LineSeriesAxisDisplayOptions
	PrimaryYAxisLabelOptions?: #ChartAxisLabelOptions
	ReferenceLines?: [...#ReferenceLine]
	SecondaryYAxisDisplayOptions?: #LineSeriesAxisDisplayOptions
	SecondaryYAxisLabelOptions?: #ChartAxisLabelOptions
	Series?: [...#SeriesItem]
	SingleAxisOptions?: #SingleAxisOptions
	SmallMultiplesOptions?: #SmallMultiplesOptions
	SortConfiguration?: #LineChartSortConfiguration
	Tooltip?: #TooltipOptions
	Type?: #LineChartType
	VisualPalette?: #VisualPalette
	XAxisDisplayOptions?: #AxisDisplayOptions
	XAxisLabelOptions?: #ChartAxisLabelOptions
}

#LineChartDefaultSeriesSettings: {
	AxisBinding?: #AxisBinding
	LineStyleSettings?: #LineChartLineStyleSettings
	MarkerStyleSettings?: #LineChartMarkerStyleSettings
}

#LineChartFieldWells: {
	LineChartAggregatedFieldWells?: #LineChartAggregatedFieldWells
}

#LineChartLineStyle: "SOLID" | "DOTTED" | "DASHED"

#LineChartLineStyleSettings: {
	LineInterpolation?: #LineInterpolation
	LineStyle?: #LineChartLineStyle
	LineVisibility?: #Visibility
	// String based length that is composed of value and unit in px
	LineWidth?: string
}

#LineChartMarkerShape: "CIRCLE" | "TRIANGLE" | "SQUARE" | "DIAMOND" | "ROUNDED_SQUARE"

#LineChartMarkerStyleSettings: {
	MarkerColor?: string & =~"^#[A-F0-9]{6}$"
	MarkerShape?: #LineChartMarkerShape
	// String based length that is composed of value and unit in px
	MarkerSize?: string
	MarkerVisibility?: #Visibility
}

#LineChartSeriesSettings: {
	LineStyleSettings?: #LineChartLineStyleSettings
	MarkerStyleSettings?: #LineChartMarkerStyleSettings
}

#LineChartSortConfiguration: {
	CategoryItemsLimitConfiguration?: #ItemsLimitConfiguration
	CategorySort?: [...#FieldSortOptions]
	ColorItemsLimitConfiguration?: #ItemsLimitConfiguration
	SmallMultiplesLimitConfiguration?: #ItemsLimitConfiguration
	SmallMultiplesSort?: [...#FieldSortOptions]
}

#LineChartType: "LINE" | "AREA" | "STACKED_AREA"

#LineChartVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #LineChartConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#LineInterpolation: "LINEAR" | "SMOOTH" | "STEPPED"

#LineSeriesAxisDisplayOptions: {
	AxisOptions?: #AxisDisplayOptions
	MissingDataConfigurations?: [...#MissingDataConfiguration]
}

#LinkSharingConfiguration: {
	Permissions?: [...#ResourcePermission]
}

#ListControlDisplayOptions: {
	InfoIconLabelOptions?: #SheetControlInfoIconLabelOptions
	SearchOptions?: #ListControlSearchOptions
	SelectAllOptions?: #ListControlSelectAllOptions
	TitleOptions?: #LabelOptions
}

#ListControlSearchOptions: {
	Visibility?: #Visibility
}

#ListControlSelectAllOptions: {
	Visibility?: #Visibility
}

#LoadingAnimation: {
	Visibility?: #Visibility
}

#LocalNavigationConfiguration: {
	TargetSheetId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#LongFormatText: {
	PlainText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	RichText?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#MapZoomMode: "AUTO" | "MANUAL"

#MappedDataSetParameter: {
	DataSetIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	DataSetParameterName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#MaximumLabelType: {
	Visibility?: #Visibility
}

#MaximumMinimumComputation: {
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name?: string
	Time?: #DimensionField
	Type: #MaximumMinimumComputationType
	Value?: #MeasureField
}

#MaximumMinimumComputationType: "MAXIMUM" | "MINIMUM"

#MeasureField: {
	CalculatedMeasureField?: #CalculatedMeasureField
	CategoricalMeasureField?: #CategoricalMeasureField
	DateMeasureField?: #DateMeasureField
	NumericalMeasureField?: #NumericalMeasureField
}

#MetricComparisonComputation: {
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	FromValue?: #MeasureField
	Name?: string
	TargetValue?: #MeasureField
	Time?: #DimensionField
}

#MinimumLabelType: {
	Visibility?: #Visibility
}

#MissingDataConfiguration: {
	TreatmentOption?: #MissingDataTreatmentOption
}

#MissingDataTreatmentOption: "INTERPOLATE" | "SHOW_AS_ZERO" | "SHOW_AS_BLANK"

#NegativeValueConfiguration: {
	DisplayMode: #NegativeValueDisplayMode
}

#NegativeValueDisplayMode: "POSITIVE" | "NEGATIVE"

#NestedFilter: {
	Column: #ColumnIdentifier
	FilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	IncludeInnerSet: bool
	InnerFilter: #InnerFilter
}

#NullValueFormatConfiguration: {
	NullString: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#NumberDisplayFormatConfiguration: {
	DecimalPlacesConfiguration?: #DecimalPlacesConfiguration
	NegativeValueConfiguration?: #NegativeValueConfiguration
	NullValueFormatConfiguration?: #NullValueFormatConfiguration
	NumberScale?: #NumberScale
	Prefix?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	SeparatorConfiguration?: #NumericSeparatorConfiguration
	Suffix?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#NumberFormatConfiguration: {
	FormatConfiguration?: #NumericFormatConfiguration
}

#NumberScale: "NONE" | "AUTO" | "THOUSANDS" | "MILLIONS" | "BILLIONS" | "TRILLIONS" | "LAKHS" | "CRORES"

#NumericAxisOptions: {
	Range?: #AxisDisplayRange
	Scale?: #AxisScale
}

#NumericEqualityDrillDownFilter: {
	Column: #ColumnIdentifier
	Value: number
}

#NumericEqualityFilter: {
	AggregationFunction?: #AggregationFunction
	Column: #ColumnIdentifier
	DefaultFilterControlConfiguration?: #DefaultFilterControlConfiguration
	FilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	MatchOperator: #NumericEqualityMatchOperator
	NullOption: #FilterNullOption
	ParameterName?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	SelectAllOptions?: #NumericFilterSelectAllOptions
	Value?: number
}

#NumericEqualityMatchOperator: "EQUALS" | "DOES_NOT_EQUAL"

#NumericFilterSelectAllOptions: "FILTER_ALL_VALUES"

#NumericFormatConfiguration: {
	CurrencyDisplayFormatConfiguration?: #CurrencyDisplayFormatConfiguration
	NumberDisplayFormatConfiguration?: #NumberDisplayFormatConfiguration
	PercentageDisplayFormatConfiguration?: #PercentageDisplayFormatConfiguration
}

#NumericRangeFilter: {
	AggregationFunction?: #AggregationFunction
	Column: #ColumnIdentifier
	DefaultFilterControlConfiguration?: #DefaultFilterControlConfiguration
	FilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	IncludeMaximum?: bool
	IncludeMinimum?: bool
	NullOption: #FilterNullOption
	RangeMaximum?: #NumericRangeFilterValue
	RangeMinimum?: #NumericRangeFilterValue
	SelectAllOptions?: #NumericFilterSelectAllOptions
}

#NumericRangeFilterValue: {
	Parameter?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	StaticValue?: number
}

#NumericSeparatorConfiguration: {
	DecimalSeparator?: #NumericSeparatorSymbol
	ThousandsSeparator?: #ThousandSeparatorOptions
}

#NumericSeparatorSymbol: "COMMA" | "DOT" | "SPACE"

#NumericalAggregationFunction: {
	PercentileAggregation?: #PercentileAggregation
	SimpleNumericalAggregation?: #SimpleNumericalAggregationFunction
}

#NumericalDimensionField: {
	Column: #ColumnIdentifier
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FormatConfiguration?: #NumberFormatConfiguration
	HierarchyId?: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#NumericalMeasureField: {
	AggregationFunction?: #NumericalAggregationFunction
	Column: #ColumnIdentifier
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FormatConfiguration?: #NumberFormatConfiguration
}

#OtherCategories: "INCLUDE" | "EXCLUDE"

#PaginationConfiguration: {
	PageNumber: number & >=0
	PageSize: number
}

#PanelBorderStyle: "SOLID" | "DASHED" | "DOTTED"

#PanelConfiguration: {
	BackgroundColor?: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	BackgroundVisibility?: #Visibility
	BorderColor?: string & =~"^#[A-F0-9]{6}(?:[A-F0-9]{2})?$"
	BorderStyle?: #PanelBorderStyle
	// String based length that is composed of value and unit in px
	BorderThickness?: string
	BorderVisibility?: #Visibility
	// String based length that is composed of value and unit in px
	GutterSpacing?: string
	GutterVisibility?: #Visibility
	Title?: #PanelTitleOptions
}

#PanelTitleOptions: {
	FontConfiguration?: #FontConfiguration
	HorizontalTextAlignment?: #HorizontalTextAlignment
	Visibility?: #Visibility
}

#PaperOrientation: "PORTRAIT" | "LANDSCAPE"

#PaperSize: "US_LETTER" | "US_LEGAL" | "US_TABLOID_LEDGER" | "A0" | "A1" | "A2" | "A3" | "A4" | "A5" | "JIS_B4" | "JIS_B5"

#ParameterControl: {
	DateTimePicker?: #ParameterDateTimePickerControl
	Dropdown?: #ParameterDropDownControl
	List?: #ParameterListControl
	Slider?: #ParameterSliderControl
	TextArea?: #ParameterTextAreaControl
	TextField?: #ParameterTextFieldControl
}

#ParameterDateTimePickerControl: {
	DisplayOptions?: #DateTimePickerControlDisplayOptions
	ParameterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceParameterName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#ParameterDeclaration: {
	DateTimeParameterDeclaration?: #DateTimeParameterDeclaration
	DecimalParameterDeclaration?: #DecimalParameterDeclaration
	IntegerParameterDeclaration?: #IntegerParameterDeclaration
	StringParameterDeclaration?: #StringParameterDeclaration
}

#ParameterDropDownControl: {
	CascadingControlConfiguration?: #CascadingControlConfiguration
	CommitMode?: #CommitMode
	DisplayOptions?: #DropDownControlDisplayOptions
	ParameterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SelectableValues?: #ParameterSelectableValues
	SourceParameterName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Type?: #SheetControlListType
}

#ParameterListControl: {
	CascadingControlConfiguration?: #CascadingControlConfiguration
	DisplayOptions?: #ListControlDisplayOptions
	ParameterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SelectableValues?: #ParameterSelectableValues
	SourceParameterName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Type?: #SheetControlListType
}

#ParameterSelectableValues: {
	LinkToDataSetColumn?: #ColumnIdentifier
	Values?: [...string]
}

#ParameterSliderControl: {
	DisplayOptions?: #SliderControlDisplayOptions
	MaximumValue: number
	MinimumValue: number
	ParameterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceParameterName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	StepSize: number
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#ParameterTextAreaControl: {
	Delimiter?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	DisplayOptions?: #TextAreaControlDisplayOptions
	ParameterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceParameterName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#ParameterTextFieldControl: {
	DisplayOptions?: #TextFieldControlDisplayOptions
	ParameterControlId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	SourceParameterName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Title: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#ParameterValueType: "MULTI_VALUED" | "SINGLE_VALUED"

#Parameters: {
	// <p>The parameters that have a data type of date-time.</p>
	DateTimeParameters?: [...#DateTimeParameter]
	// <p>The parameters that have a data type of decimal.</p>
	DecimalParameters?: [...#DecimalParameter]
	// <p>The parameters that have a data type of integer.</p>
	IntegerParameters?: [...#IntegerParameter]
	// <p>The parameters that have a data type of string.</p>
	StringParameters?: [...#StringParameter]
}

#PercentVisibleRange: {
	From?: number & >=0 & <=100
	To?: number & >=0 & <=100
}

#PercentageDisplayFormatConfiguration: {
	DecimalPlacesConfiguration?: #DecimalPlacesConfiguration
	NegativeValueConfiguration?: #NegativeValueConfiguration
	NullValueFormatConfiguration?: #NullValueFormatConfiguration
	Prefix?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	SeparatorConfiguration?: #NumericSeparatorConfiguration
	Suffix?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#PercentileAggregation: {
	PercentileValue?: number & >=0 & <=100
}

#PeriodOverPeriodComputation: {
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name?: string
	Time?: #DimensionField
	Value?: #MeasureField
}

#PeriodToDateComputation: {
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name?: string
	PeriodTimeGranularity?: #TimeGranularity
	Time?: #DimensionField
	Value?: #MeasureField
}

#PieChartAggregatedFieldWells: {
	Category?: [...#DimensionField]
	SmallMultiples?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#PieChartConfiguration: {
	CategoryLabelOptions?: #ChartAxisLabelOptions
	ContributionAnalysisDefaults?: [...#ContributionAnalysisDefault]
	DataLabels?: #DataLabelOptions
	DonutOptions?: #DonutOptions
	FieldWells?: #PieChartFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	SmallMultiplesOptions?: #SmallMultiplesOptions
	SortConfiguration?: #PieChartSortConfiguration
	Tooltip?: #TooltipOptions
	ValueLabelOptions?: #ChartAxisLabelOptions
	VisualPalette?: #VisualPalette
}

#PieChartFieldWells: {
	PieChartAggregatedFieldWells?: #PieChartAggregatedFieldWells
}

#PieChartSortConfiguration: {
	CategoryItemsLimit?: #ItemsLimitConfiguration
	CategorySort?: [...#FieldSortOptions]
	SmallMultiplesLimitConfiguration?: #ItemsLimitConfiguration
	SmallMultiplesSort?: [...#FieldSortOptions]
}

#PieChartVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #PieChartConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#PivotFieldSortOptions: {
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	SortBy: #PivotTableSortBy
}

#PivotTableAggregatedFieldWells: {
	Columns?: [...#DimensionField]
	Rows?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#PivotTableCellConditionalFormatting: {
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	Scope?: #PivotTableConditionalFormattingScope
	Scopes?: [...#PivotTableConditionalFormattingScope]
	TextFormat?: #TextConditionalFormat
}

#PivotTableConditionalFormatting: {
	ConditionalFormattingOptions?: [...#PivotTableConditionalFormattingOption]
}

#PivotTableConditionalFormattingOption: {
	Cell?: #PivotTableCellConditionalFormatting
}

#PivotTableConditionalFormattingScope: {
	Role?: #PivotTableConditionalFormattingScopeRole
}

#PivotTableConditionalFormattingScopeRole: "FIELD" | "FIELD_TOTAL" | "GRAND_TOTAL"

#PivotTableConfiguration: {
	FieldOptions?: #PivotTableFieldOptions
	FieldWells?: #PivotTableFieldWells
	Interactions?: #VisualInteractionOptions
	PaginatedReportOptions?: #PivotTablePaginatedReportOptions
	SortConfiguration?: #PivotTableSortConfiguration
	TableOptions?: #PivotTableOptions
	TotalOptions?: #PivotTableTotalOptions
}

#PivotTableDataPathOption: {
	DataPathList: [...#DataPathValue]
	// String based length that is composed of value and unit in px
	Width?: string
}

#PivotTableDataPathType: "HIERARCHY_ROWS_LAYOUT_COLUMN" | "MULTIPLE_ROW_METRICS_COLUMN" | "EMPTY_COLUMN_HEADER" | "COUNT_METRIC_COLUMN"

#PivotTableFieldCollapseState: "COLLAPSED" | "EXPANDED"

#PivotTableFieldCollapseStateOption: {
	State?: #PivotTableFieldCollapseState
	Target: #PivotTableFieldCollapseStateTarget
}

#PivotTableFieldCollapseStateTarget: {
	FieldDataPathValues?: [...#DataPathValue]
	FieldId?: string
}

#PivotTableFieldOption: {
	CustomLabel?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	Visibility?: #Visibility
}

#PivotTableFieldOptions: {
	CollapseStateOptions?: [...#PivotTableFieldCollapseStateOption]
	DataPathOptions?: [...#PivotTableDataPathOption]
	SelectedFieldOptions?: [...#PivotTableFieldOption]
}

#PivotTableFieldSubtotalOptions: {
	FieldId?: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#PivotTableFieldWells: {
	PivotTableAggregatedFieldWells?: #PivotTableAggregatedFieldWells
}

#PivotTableMetricPlacement: "ROW" | "COLUMN"

#PivotTableOptions: {
	CellStyle?: #TableCellStyle
	CollapsedRowDimensionsVisibility?: #Visibility
	ColumnHeaderStyle?: #TableCellStyle
	ColumnNamesVisibility?: #Visibility
	// String based length that is composed of value and unit in px
	DefaultCellWidth?: string
	MetricPlacement?: #PivotTableMetricPlacement
	RowAlternateColorOptions?: #RowAlternateColorOptions
	RowFieldNamesStyle?: #TableCellStyle
	RowHeaderStyle?: #TableCellStyle
	RowsLabelOptions?: #PivotTableRowsLabelOptions
	RowsLayout?: #PivotTableRowsLayout
	SingleMetricVisibility?: #Visibility
	ToggleButtonsVisibility?: #Visibility
}

#PivotTablePaginatedReportOptions: {
	OverflowColumnHeaderVisibility?: #Visibility
	VerticalOverflowVisibility?: #Visibility
}

#PivotTableRowsLabelOptions: {
	CustomLabel?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	Visibility?: #Visibility
}

#PivotTableRowsLayout: "TABULAR" | "HIERARCHY"

#PivotTableSortBy: {
	Column?: #ColumnSort
	DataPath?: #DataPathSort
	Field?: #FieldSort
}

#PivotTableSortConfiguration: {
	FieldSortOptions?: [...#PivotFieldSortOptions]
}

#PivotTableSubtotalLevel: "ALL" | "CUSTOM" | "LAST"

#PivotTableTotalOptions: {
	ColumnSubtotalOptions?: #SubtotalOptions
	ColumnTotalOptions?: #PivotTotalOptions
	RowSubtotalOptions?: #SubtotalOptions
	RowTotalOptions?: #PivotTotalOptions
}

#PivotTableVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #PivotTableConfiguration
	ConditionalFormatting?: #PivotTableConditionalFormatting
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#PivotTotalOptions: {
	CustomLabel?: string
	MetricHeaderCellStyle?: #TableCellStyle
	Placement?: #TableTotalsPlacement
	ScrollStatus?: #TableTotalsScrollStatus
	TotalAggregationOptions?: [...#TotalAggregationOption]
	TotalCellStyle?: #TableCellStyle
	TotalsVisibility?: #Visibility
	ValueCellStyle?: #TableCellStyle
}

#PluginVisual: {
	ChartConfiguration?: #PluginVisualConfiguration
	PluginArn: string
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#PluginVisualAxisName: "GROUP_BY" | "VALUE"

#PluginVisualConfiguration: {
	FieldWells?: [...#PluginVisualFieldWell]
	SortConfiguration?: #PluginVisualSortConfiguration
	VisualOptions?: #PluginVisualOptions
}

#PluginVisualFieldWell: {
	AxisName?: #PluginVisualAxisName
	Dimensions?: [...#DimensionField]
	Measures?: [...#MeasureField]
	Unaggregated?: [...#UnaggregatedField]
}

#PluginVisualItemsLimitConfiguration: {
	ItemsLimit?: number
}

#PluginVisualOptions: {
	VisualProperties?: [...#PluginVisualProperty]
}

#PluginVisualProperty: {
	Name?: string
	Value?: string
}

#PluginVisualSortConfiguration: {
	PluginVisualTableQuerySort?: #PluginVisualTableQuerySort
}

#PluginVisualTableQuerySort: {
	ItemsLimitConfiguration?: #PluginVisualItemsLimitConfiguration
	RowSort?: [...#FieldSortOptions]
}

#PredefinedHierarchy: {
	Columns: [...#ColumnIdentifier]
	DrillDownFilters?: [...#DrillDownFilter]
	HierarchyId: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#PrimaryValueDisplayType: "HIDDEN" | "COMPARISON" | "ACTUAL"

#ProgressBarOptions: {
	Visibility?: #Visibility
}

#QBusinessInsightsStatus: "ENABLED" | "DISABLED"

#QuickSuiteActionsOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#RadarChartAggregatedFieldWells: {
	Category?: [...#DimensionField]
	Color?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#RadarChartAreaStyleSettings: {
	Visibility?: #Visibility
}

#RadarChartAxesRangeScale: "AUTO" | "INDEPENDENT" | "SHARED"

#RadarChartConfiguration: {
	AlternateBandColorsVisibility?: #Visibility
	AlternateBandEvenColor?: string & =~"^#[A-F0-9]{6}$"
	AlternateBandOddColor?: string & =~"^#[A-F0-9]{6}$"
	AxesRangeScale?: #RadarChartAxesRangeScale
	BaseSeriesSettings?: #RadarChartSeriesSettings
	CategoryAxis?: #AxisDisplayOptions
	CategoryLabelOptions?: #ChartAxisLabelOptions
	ColorAxis?: #AxisDisplayOptions
	ColorLabelOptions?: #ChartAxisLabelOptions
	FieldWells?: #RadarChartFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	Shape?: #RadarChartShape
	SortConfiguration?: #RadarChartSortConfiguration
	StartAngle?: number & >=-360 & <=360
	VisualPalette?: #VisualPalette
}

#RadarChartFieldWells: {
	RadarChartAggregatedFieldWells?: #RadarChartAggregatedFieldWells
}

#RadarChartSeriesSettings: {
	AreaStyleSettings?: #RadarChartAreaStyleSettings
}

#RadarChartShape: "CIRCLE" | "POLYGON"

#RadarChartSortConfiguration: {
	CategoryItemsLimit?: #ItemsLimitConfiguration
	CategorySort?: [...#FieldSortOptions]
	ColorItemsLimit?: #ItemsLimitConfiguration
	ColorSort?: [...#FieldSortOptions]
}

#RadarChartVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #RadarChartConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#RangeEndsLabelType: {
	Visibility?: #Visibility
}

#ReferenceLine: {
	DataConfiguration: #ReferenceLineDataConfiguration
	LabelConfiguration?: #ReferenceLineLabelConfiguration
	Status?: #WidgetStatus
	StyleConfiguration?: #ReferenceLineStyleConfiguration
}

#ReferenceLineCustomLabelConfiguration: {
	CustomLabel: string & =~"\\S"
}

#ReferenceLineDataConfiguration: {
	AxisBinding?: #AxisBinding
	DynamicConfiguration?: #ReferenceLineDynamicDataConfiguration
	SeriesType?: #ReferenceLineSeriesType
	StaticConfiguration?: #ReferenceLineStaticDataConfiguration
}

#ReferenceLineDynamicDataConfiguration: {
	Calculation: #NumericalAggregationFunction
	Column: #ColumnIdentifier
	MeasureAggregationFunction?: #AggregationFunction
}

#ReferenceLineLabelConfiguration: {
	CustomLabelConfiguration?: #ReferenceLineCustomLabelConfiguration
	FontColor?: string & =~"^#[A-F0-9]{6}$"
	FontConfiguration?: #FontConfiguration
	HorizontalPosition?: #ReferenceLineLabelHorizontalPosition
	ValueLabelConfiguration?: #ReferenceLineValueLabelConfiguration
	VerticalPosition?: #ReferenceLineLabelVerticalPosition
}

#ReferenceLineLabelHorizontalPosition: "LEFT" | "CENTER" | "RIGHT"

#ReferenceLineLabelVerticalPosition: "ABOVE" | "BELOW"

#ReferenceLinePatternType: "SOLID" | "DASHED" | "DOTTED"

#ReferenceLineSeriesType: "BAR" | "LINE"

#ReferenceLineStaticDataConfiguration: {
	Value: number
}

#ReferenceLineStyleConfiguration: {
	Color?: string & =~"^#[A-F0-9]{6}$"
	Pattern?: #ReferenceLinePatternType
}

#ReferenceLineValueLabelConfiguration: {
	FormatConfiguration?: #NumericFormatConfiguration
	RelativePosition?: #ReferenceLineValueLabelRelativePosition
}

#ReferenceLineValueLabelRelativePosition: "BEFORE_CUSTOM_LABEL" | "AFTER_CUSTOM_LABEL"

#RelativeDateTimeControlDisplayOptions: {
	DateTimeFormat?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	InfoIconLabelOptions?: #SheetControlInfoIconLabelOptions
	TitleOptions?: #LabelOptions
}

#RelativeDateType: "PREVIOUS" | "THIS" | "LAST" | "NOW" | "NEXT"

#RelativeDatesFilter: {
	AnchorDateConfiguration: #AnchorDateConfiguration
	Column: #ColumnIdentifier
	DefaultFilterControlConfiguration?: #DefaultFilterControlConfiguration
	ExcludePeriodConfiguration?: #ExcludePeriodConfiguration
	FilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	MinimumGranularity?: #TimeGranularity
	NullOption: #FilterNullOption
	ParameterName?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	RelativeDateType: #RelativeDateType
	RelativeDateValue?: number
	TimeGranularity: #TimeGranularity
}

#RelativeFontSize: "EXTRA_SMALL" | "SMALL" | "MEDIUM" | "LARGE" | "EXTRA_LARGE"

#ResizeOption: "FIXED" | "RESPONSIVE"

#ResourcePermission: {
	// <p>The IAM action to grant or revoke permissions on.</p>
	Actions: [...string]
	// <p>The Amazon Resource Name (ARN) of the principal. This can be one of the
	// following:</p>
	// <ul>
	// <li>
	// <p>The ARN of an Amazon QuickSight user or group associated with a data source or dataset. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon QuickSight user, group, or namespace associated with an analysis, dashboard, template, or theme. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon Web Services account root: This is an IAM ARN rather than a QuickSight
	// ARN. Use this option only to share resources (templates) across Amazon Web Services accounts.
	// (This is less common.) </p>
	// </li>
	// </ul>
	Principal: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#ResourceStatus: "CREATION_IN_PROGRESS" | "CREATION_SUCCESSFUL" | "CREATION_FAILED" | "UPDATE_IN_PROGRESS" | "UPDATE_SUCCESSFUL" | "UPDATE_FAILED" | "PENDING_UPDATE" | "DELETED"

#RollingDateConfiguration: {
	DataSetIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#RowAlternateColorOptions: {
	RowAlternateColors?: [...string & =~"^#[A-F0-9]{6}$"]
	Status?: #WidgetStatus
	UsePrimaryBackgroundColor?: #WidgetStatus
}

#SameSheetTargetVisualConfiguration: {
	TargetVisualOptions?: #TargetVisualOptions
	TargetVisuals?: [...string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)]
}

#SankeyDiagramAggregatedFieldWells: {
	Destination?: [...#DimensionField]
	Source?: [...#DimensionField]
	Weight?: [...#MeasureField]
}

#SankeyDiagramChartConfiguration: {
	DataLabels?: #DataLabelOptions
	FieldWells?: #SankeyDiagramFieldWells
	Interactions?: #VisualInteractionOptions
	SortConfiguration?: #SankeyDiagramSortConfiguration
}

#SankeyDiagramFieldWells: {
	SankeyDiagramAggregatedFieldWells?: #SankeyDiagramAggregatedFieldWells
}

#SankeyDiagramSortConfiguration: {
	DestinationItemsLimit?: #ItemsLimitConfiguration
	SourceItemsLimit?: #ItemsLimitConfiguration
	WeightSort?: [...#FieldSortOptions]
}

#SankeyDiagramVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #SankeyDiagramChartConfiguration
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#ScatterPlotCategoricallyAggregatedFieldWells: {
	Category?: [...#DimensionField]
	Label?: [...#DimensionField]
	Size?: [...#MeasureField]
	XAxis?: [...#MeasureField]
	YAxis?: [...#MeasureField]
}

#ScatterPlotConfiguration: {
	DataLabels?: #DataLabelOptions
	FieldWells?: #ScatterPlotFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	SortConfiguration?: #ScatterPlotSortConfiguration
	Tooltip?: #TooltipOptions
	VisualPalette?: #VisualPalette
	XAxisDisplayOptions?: #AxisDisplayOptions
	XAxisLabelOptions?: #ChartAxisLabelOptions
	YAxisDisplayOptions?: #AxisDisplayOptions
	YAxisLabelOptions?: #ChartAxisLabelOptions
}

#ScatterPlotFieldWells: {
	ScatterPlotCategoricallyAggregatedFieldWells?: #ScatterPlotCategoricallyAggregatedFieldWells
	ScatterPlotUnaggregatedFieldWells?: #ScatterPlotUnaggregatedFieldWells
}

#ScatterPlotSortConfiguration: {
	ScatterPlotLimitConfiguration?: #ItemsLimitConfiguration
}

#ScatterPlotUnaggregatedFieldWells: {
	Category?: [...#DimensionField]
	Label?: [...#DimensionField]
	Size?: [...#MeasureField]
	XAxis?: [...#DimensionField]
	YAxis?: [...#DimensionField]
}

#ScatterPlotVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #ScatterPlotConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#ScrollBarOptions: {
	Visibility?: #Visibility
	VisibleRange?: #VisibleRangeOptions
}

#SecondaryValueOptions: {
	Visibility?: #Visibility
}

#SectionAfterPageBreak: {
	Status?: #SectionPageBreakStatus
}

#SectionBasedLayoutCanvasSizeOptions: {
	PaperCanvasSizeOptions?: #SectionBasedLayoutPaperCanvasSizeOptions
}

#SectionBasedLayoutConfiguration: {
	BodySections: [...#BodySectionConfiguration]
	CanvasSizeOptions: #SectionBasedLayoutCanvasSizeOptions
	FooterSections: [...#HeaderFooterSectionConfiguration]
	HeaderSections: [...#HeaderFooterSectionConfiguration]
}

#SectionBasedLayoutPaperCanvasSizeOptions: {
	PaperMargin?: #Spacing
	PaperOrientation?: #PaperOrientation
	PaperSize?: #PaperSize
}

#SectionLayoutConfiguration: {
	FreeFormLayout: #FreeFormSectionLayoutConfiguration
}

#SectionPageBreakConfiguration: {
	After?: #SectionAfterPageBreak
}

#SectionPageBreakStatus: "ENABLED" | "DISABLED"

#SectionStyle: {
	// String based length that is composed of value and unit in px
	Height?: string
	Padding?: #Spacing
}

#SelectAllValueOptions: "ALL_VALUES"

#SelectedFieldOptions: "ALL_FIELDS"

#SelectedSheetsFilterScopeConfiguration: {
	SheetVisualScopingConfigurations?: [...#SheetVisualScopingConfiguration]
}

#SelectedTooltipType: "BASIC" | "DETAILED"

#SeriesItem: {
	DataFieldSeriesItem?: #DataFieldSeriesItem
	FieldSeriesItem?: #FieldSeriesItem
}

#SetParameterValueConfiguration: {
	DestinationParameterName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Value: #DestinationParameterValueConfiguration
}

#ShapeConditionalFormat: {
	BackgroundColor: #ConditionalFormattingColor
}

#Sheet: {
	// <p>The name of a sheet. This name is displayed on the sheet's tab in the Amazon QuickSight
	// console.</p>
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// <p>The unique identifier associated with a sheet.</p>
	SheetId?: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#SheetContentType: "PAGINATED" | "INTERACTIVE"

#SheetControlDateTimePickerType: "SINGLE_VALUED" | "DATE_RANGE"

#SheetControlInfoIconLabelOptions: {
	InfoIconText?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	Visibility?: #Visibility
}

#SheetControlLayout: {
	Configuration: #SheetControlLayoutConfiguration
}

#SheetControlLayoutConfiguration: {
	GridLayout?: #GridLayoutConfiguration
}

#SheetControlListType: "MULTI_SELECT" | "SINGLE_SELECT"

#SheetControlSliderType: "SINGLE_POINT" | "RANGE"

#SheetControlsOption: {
	VisibilityState?: #DashboardUIState
}

#SheetDefinition: {
	ContentType?: #SheetContentType
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	FilterControls?: [...#FilterControl]
	Images?: [...#SheetImage]
	Layouts?: [...#Layout]
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ParameterControls?: [...#ParameterControl]
	SheetControlLayouts?: [...#SheetControlLayout]
	SheetId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	TextBoxes?: [...#SheetTextBox]
	Title?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	Visuals?: [...#Visual]
}

#SheetElementConfigurationOverrides: {
	Visibility?: #Visibility
}

#SheetElementRenderingRule: {
	ConfigurationOverrides: #SheetElementConfigurationOverrides
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#SheetImage: {
	Actions?: [...#ImageCustomAction]
	ImageContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	Interactions?: #ImageInteractionOptions
	Scaling?: #SheetImageScalingConfiguration
	SheetImageId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Source: #SheetImageSource
	Tooltip?: #SheetImageTooltipConfiguration
}

#SheetImageScalingConfiguration: {
	ScalingType?: #SheetImageScalingType
}

#SheetImageScalingType: "SCALE_TO_WIDTH" | "SCALE_TO_HEIGHT" | "SCALE_TO_CONTAINER" | "SCALE_NONE"

#SheetImageSource: {
	SheetImageStaticFileSource?: #SheetImageStaticFileSource
}

#SheetImageStaticFileSource: {
	StaticFileId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#SheetImageTooltipConfiguration: {
	TooltipText?: #SheetImageTooltipText
	Visibility?: #Visibility
}

#SheetImageTooltipText: {
	PlainText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#SheetLayoutElementMaximizationOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#SheetTextBox: {
	Content?: string & strings.MinRunes(0) & strings.MaxRunes(150000)
	SheetTextBoxId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#SheetVisualScopingConfiguration: {
	Scope: #FilterVisualScope
	SheetId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	VisualIds?: [...string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)]
}

#ShortFormatText: {
	PlainText?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	RichText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#SimpleAttributeAggregationFunction: "UNIQUE_VALUE"

#SimpleClusterMarker: {
	Color?: string & =~"^#[A-F0-9]{6}$"
}

#SimpleNumericalAggregationFunction: "SUM" | "AVERAGE" | "MIN" | "MAX" | "COUNT" | "DISTINCT_COUNT" | "VAR" | "VARP" | "STDEV" | "STDEVP" | "MEDIAN"

#SimpleTotalAggregationFunction: "DEFAULT" | "SUM" | "AVERAGE" | "MIN" | "MAX" | "NONE"

#SingleAxisOptions: {
	YAxisOptions?: #YAxisOptions
}

#SingleYAxisOption: "PRIMARY_Y_AXIS"

#SliderControlDisplayOptions: {
	InfoIconLabelOptions?: #SheetControlInfoIconLabelOptions
	TitleOptions?: #LabelOptions
}

#SmallMultiplesAxisPlacement: "OUTSIDE" | "INSIDE"

#SmallMultiplesAxisProperties: {
	Placement?: #SmallMultiplesAxisPlacement
	Scale?: #SmallMultiplesAxisScale
}

#SmallMultiplesAxisScale: "SHARED" | "INDEPENDENT"

#SmallMultiplesOptions: {
	MaxVisibleColumns?: number & >=1 & <=10
	MaxVisibleRows?: number & >=1 & <=10
	PanelConfiguration?: #PanelConfiguration
	XAxis?: #SmallMultiplesAxisProperties
	YAxis?: #SmallMultiplesAxisProperties
}

#SortDirection: "ASC" | "DESC"

#Spacing: {
	// String based length that is composed of value and unit
	Bottom?: string
	// String based length that is composed of value and unit
	Left?: string
	// String based length that is composed of value and unit
	Right?: string
	// String based length that is composed of value and unit
	Top?: string
}

#SpatialStaticFile: {
	Source?: #StaticFileSource
	StaticFileId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#SpecialValue: "EMPTY" | "NULL" | "OTHER"

#StaticFile: {
	ImageStaticFile?: #ImageStaticFile
	SpatialStaticFile?: #SpatialStaticFile
}

#StaticFileS3SourceOptions: {
	BucketName: string
	ObjectKey: string
	Region: string
}

#StaticFileSource: {
	S3Options?: #StaticFileS3SourceOptions
	UrlOptions?: #StaticFileUrlSourceOptions
}

#StaticFileUrlSourceOptions: {
	Url: string
}

#StringDefaultValues: {
	DynamicValue?: #DynamicDefaultValue
	StaticValues?: [...string]
}

#StringFormatConfiguration: {
	NullValueFormatConfiguration?: #NullValueFormatConfiguration
	NumericFormatConfiguration?: #NumericFormatConfiguration
}

#StringParameter: {
	// <p>A display name for a string parameter.</p>
	Name: string & =~"\\S"
	// <p>The values of a string parameter.</p>
	Values: [...string]
}

#StringParameterDeclaration: {
	DefaultValues?: #StringDefaultValues
	MappedDataSetParameters?: [...#MappedDataSetParameter]
	Name: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ParameterValueType: #ParameterValueType
	ValueWhenUnset?: #StringValueWhenUnsetConfiguration
}

#StringValueWhenUnsetConfiguration: {
	CustomValue?: string
	ValueWhenUnsetOption?: #ValueWhenUnsetOption
}

#StyledCellType: "TOTAL" | "METRIC_HEADER" | "VALUE"

#SubtotalOptions: {
	CustomLabel?: string
	FieldLevel?: #PivotTableSubtotalLevel
	FieldLevelOptions?: [...#PivotTableFieldSubtotalOptions]
	MetricHeaderCellStyle?: #TableCellStyle
	StyleTargets?: [...#TableStyleTarget]
	TotalCellStyle?: #TableCellStyle
	TotalsVisibility?: #Visibility
	ValueCellStyle?: #TableCellStyle
}

#TableAggregatedFieldWells: {
	GroupBy?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#TableBorderOptions: {
	Color?: string & =~"^#[A-F0-9]{6}$"
	Style?: #TableBorderStyle
	Thickness?: number & >=1 & <=4
}

#TableBorderStyle: "NONE" | "SOLID"

#TableCellConditionalFormatting: {
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	TextFormat?: #TextConditionalFormat
}

#TableCellImageScalingConfiguration: "FIT_TO_CELL_HEIGHT" | "FIT_TO_CELL_WIDTH" | "DO_NOT_SCALE"

#TableCellImageSizingConfiguration: {
	TableCellImageScalingConfiguration?: #TableCellImageScalingConfiguration
}

#TableCellStyle: {
	BackgroundColor?: string & =~"^#[A-F0-9]{6}$"
	Border?: #GlobalTableBorderOptions
	FontConfiguration?: #FontConfiguration
	Height?: number & >=8 & <=500
	HorizontalTextAlignment?: #HorizontalTextAlignment
	TextWrap?: #TextWrap
	VerticalTextAlignment?: #VerticalTextAlignment
	Visibility?: #Visibility
}

#TableConditionalFormatting: {
	ConditionalFormattingOptions?: [...#TableConditionalFormattingOption]
}

#TableConditionalFormattingOption: {
	Cell?: #TableCellConditionalFormatting
	Row?: #TableRowConditionalFormatting
}

#TableConfiguration: {
	FieldOptions?: #TableFieldOptions
	FieldWells?: #TableFieldWells
	Interactions?: #VisualInteractionOptions
	PaginatedReportOptions?: #TablePaginatedReportOptions
	SortConfiguration?: #TableSortConfiguration
	TableInlineVisualizations?: [...#TableInlineVisualization]
	TableOptions?: #TableOptions
	TotalOptions?: #TotalOptions
}

#TableFieldCustomIconContent: {
	Icon?: #TableFieldIconSetType
}

#TableFieldCustomTextContent: {
	FontConfiguration: #FontConfiguration
	Value?: string
}

#TableFieldIconSetType: "LINK"

#TableFieldImageConfiguration: {
	SizingOptions?: #TableCellImageSizingConfiguration
}

#TableFieldLinkConfiguration: {
	Content: #TableFieldLinkContentConfiguration
	Target: #URLTargetConfiguration
}

#TableFieldLinkContentConfiguration: {
	CustomIconContent?: #TableFieldCustomIconContent
	CustomTextContent?: #TableFieldCustomTextContent
}

#TableFieldOption: {
	CustomLabel?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	URLStyling?: #TableFieldURLConfiguration
	Visibility?: #Visibility
	// String based length that is composed of value and unit in px
	Width?: string
}

#TableFieldOptions: {
	Order?: [...string & strings.MinRunes(1) & strings.MaxRunes(512)]
	PinnedFieldOptions?: #TablePinnedFieldOptions
	SelectedFieldOptions?: [...#TableFieldOption]
	TransposedTableOptions?: [...#TransposedTableOption]
}

#TableFieldURLConfiguration: {
	ImageConfiguration?: #TableFieldImageConfiguration
	LinkConfiguration?: #TableFieldLinkConfiguration
}

#TableFieldWells: {
	TableAggregatedFieldWells?: #TableAggregatedFieldWells
	TableUnaggregatedFieldWells?: #TableUnaggregatedFieldWells
}

#TableInlineVisualization: {
	DataBars?: #DataBarsOptions
}

#TableOptions: {
	CellStyle?: #TableCellStyle
	HeaderStyle?: #TableCellStyle
	Orientation?: #TableOrientation
	RowAlternateColorOptions?: #RowAlternateColorOptions
}

#TableOrientation: "VERTICAL" | "HORIZONTAL"

#TablePaginatedReportOptions: {
	OverflowColumnHeaderVisibility?: #Visibility
	VerticalOverflowVisibility?: #Visibility
}

#TablePinnedFieldOptions: {
	PinnedLeftFields?: [...string & strings.MinRunes(1) & strings.MaxRunes(512)]
}

#TableRowConditionalFormatting: {
	BackgroundColor?: #ConditionalFormattingColor
	TextColor?: #ConditionalFormattingColor
}

#TableSideBorderOptions: {
	Bottom?: #TableBorderOptions
	InnerHorizontal?: #TableBorderOptions
	InnerVertical?: #TableBorderOptions
	Left?: #TableBorderOptions
	Right?: #TableBorderOptions
	Top?: #TableBorderOptions
}

#TableSortConfiguration: {
	PaginationConfiguration?: #PaginationConfiguration
	RowSort?: [...#FieldSortOptions]
}

#TableStyleTarget: {
	CellType: #StyledCellType
}

#TableTotalsPlacement: "START" | "END" | "AUTO"

#TableTotalsScrollStatus: "PINNED" | "SCROLLED"

#TableUnaggregatedFieldWells: {
	Values?: [...#UnaggregatedField]
}

#TableVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #TableConfiguration
	ConditionalFormatting?: #TableConditionalFormatting
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TargetVisualOptions: "ALL_VISUALS"

#TextAreaControlDisplayOptions: {
	InfoIconLabelOptions?: #SheetControlInfoIconLabelOptions
	PlaceholderOptions?: #TextControlPlaceholderOptions
	TitleOptions?: #LabelOptions
}

#TextConditionalFormat: {
	BackgroundColor?: #ConditionalFormattingColor
	Icon?: #ConditionalFormattingIcon
	TextColor?: #ConditionalFormattingColor
}

#TextControlPlaceholderOptions: {
	Visibility?: #Visibility
}

#TextFieldControlDisplayOptions: {
	InfoIconLabelOptions?: #SheetControlInfoIconLabelOptions
	PlaceholderOptions?: #TextControlPlaceholderOptions
	TitleOptions?: #LabelOptions
}

#TextWrap: "NONE" | "WRAP"

#ThousandSeparatorOptions: {
	GroupingStyle?: #DigitGroupingStyle
	Symbol?: #NumericSeparatorSymbol
	Visibility?: #Visibility
}

#TimeBasedForecastProperties: {
	LowerBoundary?: number
	PeriodsBackward?: number & >=0 & <=1000
	PeriodsForward?: number & >=1 & <=1000
	PredictionInterval?: number & >=50 & <=95
	Seasonality?: number & >=1 & <=180
	UpperBoundary?: number
}

#TimeEqualityFilter: {
	Column: #ColumnIdentifier
	DefaultFilterControlConfiguration?: #DefaultFilterControlConfiguration
	FilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	ParameterName?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	RollingDate?: #RollingDateConfiguration
	TimeGranularity?: #TimeGranularity
	Value?: string
}

#TimeGranularity: "YEAR" | "QUARTER" | "MONTH" | "WEEK" | "DAY" | "HOUR" | "MINUTE" | "SECOND" | "MILLISECOND"

#TimeRangeDrillDownFilter: {
	Column: #ColumnIdentifier
	RangeMaximum: string
	RangeMinimum: string
	TimeGranularity: #TimeGranularity
}

#TimeRangeFilter: {
	Column: #ColumnIdentifier
	DefaultFilterControlConfiguration?: #DefaultFilterControlConfiguration
	ExcludePeriodConfiguration?: #ExcludePeriodConfiguration
	FilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	IncludeMaximum?: bool
	IncludeMinimum?: bool
	NullOption: #FilterNullOption
	RangeMaximumValue?: #TimeRangeFilterValue
	RangeMinimumValue?: #TimeRangeFilterValue
	TimeGranularity?: #TimeGranularity
}

#TimeRangeFilterValue: {
	Parameter?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	RollingDate?: #RollingDateConfiguration
	StaticValue?: string
}

#TooltipItem: {
	ColumnTooltipItem?: #ColumnTooltipItem
	FieldTooltipItem?: #FieldTooltipItem
}

#TooltipOptions: {
	FieldBasedTooltip?: #FieldBasedTooltip
	SelectedTooltipType?: #SelectedTooltipType
	TooltipVisibility?: #Visibility
}

#TooltipTarget: "BOTH" | "BAR" | "LINE"

#TooltipTitleType: "NONE" | "PRIMARY_VALUE"

#TopBottomComputationType: "TOP" | "BOTTOM"

#TopBottomFilter: {
	AggregationSortConfigurations: [...#AggregationSortConfiguration]
	Column: #ColumnIdentifier
	DefaultFilterControlConfiguration?: #DefaultFilterControlConfiguration
	FilterId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Limit?: number
	ParameterName?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	TimeGranularity?: #TimeGranularity
}

#TopBottomMoversComputation: {
	Category?: #DimensionField
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	MoverSize?: number & >=1 & <=20
	Name?: string
	SortOrder?: #TopBottomSortOrder
	Time?: #DimensionField
	Type: #TopBottomComputationType
	Value?: #MeasureField
}

#TopBottomRankedComputation: {
	Category?: #DimensionField
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name?: string
	ResultSize?: number & >=1 & <=20
	Type: #TopBottomComputationType
	Value?: #MeasureField
}

#TopBottomSortOrder: "PERCENT_DIFFERENCE" | "ABSOLUTE_DIFFERENCE"

#TotalAggregationComputation: {
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name?: string
	Value?: #MeasureField
}

#TotalAggregationFunction: {
	SimpleTotalAggregationFunction?: #SimpleTotalAggregationFunction
}

#TotalAggregationOption: {
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	TotalAggregationFunction: #TotalAggregationFunction
}

#TotalOptions: {
	CustomLabel?: string
	Placement?: #TableTotalsPlacement
	ScrollStatus?: #TableTotalsScrollStatus
	TotalAggregationOptions?: [...#TotalAggregationOption]
	TotalCellStyle?: #TableCellStyle
	TotalsVisibility?: #Visibility
}

#TransposedColumnType: "ROW_HEADER_COLUMN" | "VALUE_COLUMN"

#TransposedTableOption: {
	ColumnIndex?: number & >=0 & <=9999
	ColumnType: #TransposedColumnType
	// String based length that is composed of value and unit in px
	ColumnWidth?: string
}

#TreeMapAggregatedFieldWells: {
	Colors?: [...#MeasureField]
	Groups?: [...#DimensionField]
	Sizes?: [...#MeasureField]
}

#TreeMapConfiguration: {
	ColorLabelOptions?: #ChartAxisLabelOptions
	ColorScale?: #ColorScale
	DataLabels?: #DataLabelOptions
	FieldWells?: #TreeMapFieldWells
	GroupLabelOptions?: #ChartAxisLabelOptions
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	SizeLabelOptions?: #ChartAxisLabelOptions
	SortConfiguration?: #TreeMapSortConfiguration
	Tooltip?: #TooltipOptions
}

#TreeMapFieldWells: {
	TreeMapAggregatedFieldWells?: #TreeMapAggregatedFieldWells
}

#TreeMapSortConfiguration: {
	TreeMapGroupItemsLimitConfiguration?: #ItemsLimitConfiguration
	TreeMapSort?: [...#FieldSortOptions]
}

#TreeMapVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #TreeMapConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#TrendArrowOptions: {
	Visibility?: #Visibility
}

#URLTargetConfiguration: "NEW_TAB" | "NEW_WINDOW" | "SAME_TAB"

#UnaggregatedField: {
	Column: #ColumnIdentifier
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(512)
	FormatConfiguration?: #FormatConfiguration
}

#UniqueValuesComputation: {
	Category?: #DimensionField
	ComputationId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name?: string
}

#ValidationStrategy: {
	Mode: #ValidationStrategyMode
}

#ValidationStrategyMode: "STRICT" | "LENIENT"

#ValueWhenUnsetOption: "RECOMMENDED_VALUE" | "NULL"

#VerticalTextAlignment: "TOP" | "MIDDLE" | "BOTTOM" | "AUTO"

#Visibility: "HIDDEN" | "VISIBLE"

#VisibleRangeOptions: {
	PercentRange?: #PercentVisibleRange
}

#Visual: {
	BarChartVisual?: #BarChartVisual
	BoxPlotVisual?: #BoxPlotVisual
	ComboChartVisual?: #ComboChartVisual
	CustomContentVisual?: #CustomContentVisual
	EmptyVisual?: #EmptyVisual
	FilledMapVisual?: #FilledMapVisual
	FunnelChartVisual?: #FunnelChartVisual
	GaugeChartVisual?: #GaugeChartVisual
	GeospatialMapVisual?: #GeospatialMapVisual
	HeatMapVisual?: #HeatMapVisual
	HistogramVisual?: #HistogramVisual
	InsightVisual?: #InsightVisual
	KPIVisual?: #KPIVisual
	LayerMapVisual?: #LayerMapVisual
	LineChartVisual?: #LineChartVisual
	PieChartVisual?: #PieChartVisual
	PivotTableVisual?: #PivotTableVisual
	PluginVisual?: #PluginVisual
	RadarChartVisual?: #RadarChartVisual
	SankeyDiagramVisual?: #SankeyDiagramVisual
	ScatterPlotVisual?: #ScatterPlotVisual
	TableVisual?: #TableVisual
	TreeMapVisual?: #TreeMapVisual
	WaterfallVisual?: #WaterfallVisual
	WordCloudVisual?: #WordCloudVisual
}

#VisualAxisSortOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#VisualCustomAction: {
	ActionOperations: [...#VisualCustomActionOperation]
	CustomActionId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Status?: #WidgetStatus
	Trigger: #VisualCustomActionTrigger
}

#VisualCustomActionOperation: {
	FilterOperation?: #CustomActionFilterOperation
	NavigationOperation?: #CustomActionNavigationOperation
	SetParametersOperation?: #CustomActionSetParametersOperation
	URLOperation?: #CustomActionURLOperation
}

#VisualCustomActionTrigger: "DATA_POINT_CLICK" | "DATA_POINT_MENU"

#VisualInteractionOptions: {
	ContextMenuOption?: #ContextMenuOption
	VisualMenuOption?: #VisualMenuOption
}

#VisualMenuOption: {
	AvailabilityStatus?: #DashboardBehavior
}

#VisualPalette: {
	ChartColor?: string & =~"^#[A-F0-9]{6}$"
	ColorMap?: [...#DataPathColor]
}

#VisualSubtitleLabelOptions: {
	FormatText?: #LongFormatText
	Visibility?: #Visibility
}

#VisualTitleLabelOptions: {
	FormatText?: #ShortFormatText
	Visibility?: #Visibility
}

#WaterfallChartAggregatedFieldWells: {
	Breakdowns?: [...#DimensionField]
	Categories?: [...#DimensionField]
	Values?: [...#MeasureField]
}

#WaterfallChartColorConfiguration: {
	GroupColorConfiguration?: #WaterfallChartGroupColorConfiguration
}

#WaterfallChartConfiguration: {
	CategoryAxisDisplayOptions?: #AxisDisplayOptions
	CategoryAxisLabelOptions?: #ChartAxisLabelOptions
	ColorConfiguration?: #WaterfallChartColorConfiguration
	DataLabels?: #DataLabelOptions
	FieldWells?: #WaterfallChartFieldWells
	Interactions?: #VisualInteractionOptions
	Legend?: #LegendOptions
	PrimaryYAxisDisplayOptions?: #AxisDisplayOptions
	PrimaryYAxisLabelOptions?: #ChartAxisLabelOptions
	SortConfiguration?: #WaterfallChartSortConfiguration
	VisualPalette?: #VisualPalette
	WaterfallChartOptions?: #WaterfallChartOptions
}

#WaterfallChartFieldWells: {
	WaterfallChartAggregatedFieldWells?: #WaterfallChartAggregatedFieldWells
}

#WaterfallChartGroupColorConfiguration: {
	NegativeBarColor?: string & =~"^#[A-F0-9]{6}$"
	PositiveBarColor?: string & =~"^#[A-F0-9]{6}$"
	TotalBarColor?: string & =~"^#[A-F0-9]{6}$"
}

#WaterfallChartOptions: {
	TotalBarLabel?: string
}

#WaterfallChartSortConfiguration: {
	BreakdownItemsLimit?: #ItemsLimitConfiguration
	CategorySort?: [...#FieldSortOptions]
}

#WaterfallVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #WaterfallChartConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#WhatIfPointScenario: {
	Date: string
	Value: number
}

#WhatIfRangeScenario: {
	EndDate: string
	StartDate: string
	Value: number
}

#WidgetStatus: "ENABLED" | "DISABLED"

#WordCloudAggregatedFieldWells: {
	GroupBy?: [...#DimensionField]
	Size?: [...#MeasureField]
}

#WordCloudChartConfiguration: {
	CategoryLabelOptions?: #ChartAxisLabelOptions
	FieldWells?: #WordCloudFieldWells
	Interactions?: #VisualInteractionOptions
	SortConfiguration?: #WordCloudSortConfiguration
	WordCloudOptions?: #WordCloudOptions
}

#WordCloudCloudLayout: "FLUID" | "NORMAL"

#WordCloudFieldWells: {
	WordCloudAggregatedFieldWells?: #WordCloudAggregatedFieldWells
}

#WordCloudOptions: {
	CloudLayout?: #WordCloudCloudLayout
	MaximumStringLength?: number & >=1 & <=100
	WordCasing?: #WordCloudWordCasing
	WordOrientation?: #WordCloudWordOrientation
	WordPadding?: #WordCloudWordPadding
	WordScaling?: #WordCloudWordScaling
}

#WordCloudSortConfiguration: {
	CategoryItemsLimit?: #ItemsLimitConfiguration
	CategorySort?: [...#FieldSortOptions]
}

#WordCloudVisual: {
	Actions?: [...#VisualCustomAction]
	ChartConfiguration?: #WordCloudChartConfiguration
	ColumnHierarchies?: [...#ColumnHierarchy]
	Subtitle?: #VisualSubtitleLabelOptions
	Title?: #VisualTitleLabelOptions
	VisualContentAltText?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	VisualId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#WordCloudWordCasing: "LOWER_CASE" | "EXISTING_CASE"

#WordCloudWordOrientation: "HORIZONTAL" | "HORIZONTAL_AND_VERTICAL"

#WordCloudWordPadding: "NONE" | "SMALL" | "MEDIUM" | "LARGE"

#WordCloudWordScaling: "EMPHASIZE" | "NORMAL"

#YAxisOptions: {
	YAxis: #SingleYAxisOption
}
