package dataset

import "strings"

#Properties: {
	AwsAccountId?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// <p>Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported.</p>
	ColumnGroups?: [...#ColumnGroup]
	// <p>A set of one or more definitions of a <code>
	// <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html">ColumnLevelPermissionRule</a>
	// </code>.</p>
	ColumnLevelPermissionRules?: [...#ColumnLevelPermissionRule]
	DataPrepConfiguration?: #DataPrepConfiguration
	DataSetId?: string
	DataSetRefreshProperties?: #DataSetRefreshProperties
	DataSetUsageConfiguration?: #DataSetUsageConfiguration
	// <p>The parameter declarations of the dataset.</p>
	DatasetParameters?: [...#DatasetParameter]
	FieldFolders?: #FieldFolderMap
	// <p>When you create the dataset, Amazon QuickSight adds the dataset to these folders.</p>
	FolderArns?: [...string]
	ImportMode?: #DataSetImportMode
	IngestionWaitPolicy?: #IngestionWaitPolicy
	LogicalTableMap?: #LogicalTableMap
	// <p>The display name for the dataset.</p>
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	PerformanceConfiguration?: #PerformanceConfiguration
	// <p>A list of resource permissions on the dataset.</p>
	Permissions?: [...#ResourcePermission]
	PhysicalTableMap?: #PhysicalTableMap
	RowLevelPermissionDataSet?: #RowLevelPermissionDataSet
	RowLevelPermissionTagConfiguration?: #RowLevelPermissionTagConfiguration
	SemanticModelConfiguration?: #SemanticModelConfiguration
	// <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the dataset.</p>
	Tags?: [...#Tag]
	UseAs?: #DataSetUseAs
}

#AdditionalNotes: {
	Text?: string & strings.MinRunes(0) & strings.MaxRunes(2000)
}

#AggregateOperation: {
	Aggregations: [...#Aggregation]
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	GroupByColumnNames?: [...string & strings.MinRunes(1) & strings.MaxRunes(127)]
	Source: #TransformOperationSource
}

#Aggregation: {
	AggregationFunction: #DataPrepAggregationFunction
	NewColumnId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	NewColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
}

#AppendOperation: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	AppendedColumns: [...#AppendedColumn]
	FirstSource?: #TransformOperationSource
	SecondSource?: #TransformOperationSource
}

#AppendedColumn: {
	ColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
	NewColumnId: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#CalculatedColumn: {
	// <p>A unique ID to identify a calculated column. During a dataset update, if the column ID
	// of a calculated column matches that of an existing calculated column, Amazon QuickSight
	// preserves the existing calculated column.</p>
	ColumnId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// <p>Column name.</p>
	ColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// <p>An expression that defines the calculated column.</p>
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(250000)
}

#CastColumnTypeOperation: {
	// <p>Column name.</p>
	ColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// <p>When casting a column from string to datetime type, you can supply a string in a
	// format supported by Amazon QuickSight to denote the source data format.</p>
	Format?: string & strings.MinRunes(0) & strings.MaxRunes(32)
	NewColumnType: #ColumnDataType
	SubType?: #ColumnDataSubType
}

#CastColumnTypesOperation: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	CastColumnTypeOperations: [...#CastColumnTypeOperation]
	Source: #TransformOperationSource
}

#ColumnDataSubType: "FLOAT" | "FIXED"

#ColumnDataType: "STRING" | "INTEGER" | "DECIMAL" | "DATETIME"

#ColumnDescription: {
	// <p>The text of a description for a column.</p>
	Text?: string & strings.MinRunes(0) & strings.MaxRunes(500)
}

#ColumnGroup: {
	GeoSpatialColumnGroup?: #GeoSpatialColumnGroup
}

#ColumnLevelPermissionRule: {
	// <p>An array of column names.</p>
	ColumnNames?: [...string]
	// <p>An array of Amazon Resource Names (ARNs) for Amazon QuickSight users or groups.</p>
	Principals?: [...string]
}

#ColumnSemanticProperty: {
	AdditionalNotes?: #AdditionalNotes
	Description?: #ColumnDescription
	SemanticType?: #ColumnSemanticType
}

#ColumnSemanticType: {
	GeographicalRole?: #GeoSpatialDataRole
}

#ColumnTag: {
	ColumnDescription?: #ColumnDescription
	ColumnGeographicRole?: #GeoSpatialDataRole
}

#ColumnTagName: "COLUMN_GEOGRAPHIC_ROLE" | "COLUMN_DESCRIPTION"

#ColumnToUnpivot: {
	ColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	NewValue?: string & strings.MinRunes(0) & strings.MaxRunes(2047)
}

#CreateColumnsOperation: {
	Alias?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// <p>Calculated columns to create.</p>
	Columns: [...#CalculatedColumn]
	Source?: #TransformOperationSource
}

#CustomInstruction: {
	InlineCustomInstruction?: #InlineCustomInstruction
}

#CustomSql: {
	// <p>The column schema from the SQL query result set.</p>
	Columns: [...#InputColumn]
	// <p>The Amazon Resource Name (ARN) of the data source.</p>
	DataSourceArn: string
	// <p>A display name for the SQL query result.</p>
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>The SQL query.</p>
	SqlQuery: string & strings.MinRunes(1) & strings.MaxRunes(168000)
}

#DataPrepAggregationFunction: {
	ListAggregation?: #DataPrepListAggregationFunction
	PercentileAggregation?: #DataPrepPercentileAggregationFunction
	SimpleAggregation?: #DataPrepSimpleAggregationFunction
}

#DataPrepConfiguration: {
	DestinationTableMap: #DestinationTableMap
	SourceTableMap: #SourceTableMap
	TransformStepMap: #TransformStepMap
}

#DataPrepListAggregationFunction: {
	Distinct: bool
	InputColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	Separator: string
}

#DataPrepPercentileAggregationFunction: {
	InputColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	PercentileValue: number & >=0 & <=100
}

#DataPrepSimpleAggregationFunction: {
	FunctionType: #DataPrepSimpleAggregationFunctionType
	InputColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(127)
}

#DataPrepSimpleAggregationFunctionType: "COUNT" | "DISTINCT_COUNT" | "SUM" | "AVERAGE" | "MEDIAN" | "MAX" | "MIN" | "VARIANCE" | "STANDARD_DEVIATION"

#DataSetColumnIdMapping: {
	SourceColumnId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	TargetColumnId: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#DataSetDateComparisonFilterCondition: {
	Operator: #DataSetDateComparisonFilterOperator
	Value?: #DataSetDateFilterValue
}

#DataSetDateComparisonFilterOperator: "BEFORE" | "BEFORE_OR_EQUALS_TO" | "AFTER" | "AFTER_OR_EQUALS_TO"

#DataSetDateFilterCondition: {
	ColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	ComparisonFilterCondition?: #DataSetDateComparisonFilterCondition
	RangeFilterCondition?: #DataSetDateRangeFilterCondition
}

#DataSetDateFilterValue: {
	StaticValue?: string
}

#DataSetDateRangeFilterCondition: {
	IncludeMaximum?: bool
	IncludeMinimum?: bool
	RangeMaximum?: #DataSetDateFilterValue
	RangeMinimum?: #DataSetDateFilterValue
}

#DataSetImportMode: "SPICE" | "DIRECT_QUERY"

#DataSetNumericComparisonFilterCondition: {
	Operator: #DataSetNumericComparisonFilterOperator
	Value?: #DataSetNumericFilterValue
}

#DataSetNumericComparisonFilterOperator: "EQUALS" | "DOES_NOT_EQUAL" | "GREATER_THAN" | "GREATER_THAN_OR_EQUALS_TO" | "LESS_THAN" | "LESS_THAN_OR_EQUALS_TO"

#DataSetNumericFilterCondition: {
	ColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	ComparisonFilterCondition?: #DataSetNumericComparisonFilterCondition
	RangeFilterCondition?: #DataSetNumericRangeFilterCondition
}

#DataSetNumericFilterValue: {
	StaticValue?: number
}

#DataSetNumericRangeFilterCondition: {
	IncludeMaximum?: bool
	IncludeMinimum?: bool
	RangeMaximum?: #DataSetNumericFilterValue
	RangeMinimum?: #DataSetNumericFilterValue
}

#DataSetRefreshProperties: {
	FailureConfiguration?: #RefreshFailureConfiguration
	RefreshConfiguration?: #RefreshConfiguration
}

#DataSetSemanticDescription: {
	Text: string & strings.MinRunes(1) & strings.MaxRunes(500)
}

#DataSetSemanticMetadata: {
	CustomInstructions?: [...#CustomInstruction]
	Description?: #DataSetSemanticDescription
}

#DataSetStringComparisonFilterCondition: {
	Operator: #DataSetStringComparisonFilterOperator
	Value?: #DataSetStringFilterValue
}

#DataSetStringComparisonFilterOperator: "EQUALS" | "DOES_NOT_EQUAL" | "CONTAINS" | "DOES_NOT_CONTAIN" | "STARTS_WITH" | "ENDS_WITH"

#DataSetStringFilterCondition: {
	ColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	ComparisonFilterCondition?: #DataSetStringComparisonFilterCondition
	ListFilterCondition?: #DataSetStringListFilterCondition
}

#DataSetStringFilterValue: {
	StaticValue?: string & strings.MinRunes(0) & strings.MaxRunes(512)
}

#DataSetStringListFilterCondition: {
	Operator: #DataSetStringListFilterOperator
	Values?: #DataSetStringListFilterValue
}

#DataSetStringListFilterOperator: "INCLUDE" | "EXCLUDE"

#DataSetStringListFilterValue: {
	StaticValues?: [...string & strings.MinRunes(0) & strings.MaxRunes(512)]
}

#DataSetUsageConfiguration: {
	// <p>An option that controls whether a child dataset of a direct query can use this dataset as a source.</p>
	DisableUseAsDirectQuerySource?: bool
	// <p>An option that controls whether a child dataset that's stored in QuickSight can use this dataset as a source.</p>
	DisableUseAsImportedSource?: bool
}

#DataSetUseAs: "RLS_RULES"

#DatasetParameter: {
	DateTimeDatasetParameter?: #DateTimeDatasetParameter
	DecimalDatasetParameter?: #DecimalDatasetParameter
	IntegerDatasetParameter?: #IntegerDatasetParameter
	StringDatasetParameter?: #StringDatasetParameter
}

#DatasetParameterValueType: "MULTI_VALUED" | "SINGLE_VALUED"

#DateTimeDatasetParameter: {
	DefaultValues?: #DateTimeDatasetParameterDefaultValues
	// <p>An identifier for the parameter that is created in the dataset.</p>
	Id: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>The name of the date time parameter that is created in the dataset.</p>
	Name: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	TimeGranularity?: #TimeGranularity
	ValueType: #DatasetParameterValueType
}

#DateTimeDatasetParameterDefaultValues: {
	// <p>A list of static default values for a given date time parameter.</p>
	StaticValues?: [...string]
}

#DecimalDatasetParameter: {
	DefaultValues?: #DecimalDatasetParameterDefaultValues
	// <p>An identifier for the decimal parameter created in the dataset.</p>
	Id: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>The name of the decimal parameter that is created in the dataset.</p>
	Name: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ValueType: #DatasetParameterValueType
}

#DecimalDatasetParameterDefaultValues: {
	// <p>A list of static default values for a given decimal parameter.</p>
	StaticValues?: [...number]
}

#DestinationTable: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	Source: #DestinationTableSource
}

#DestinationTableMap: {...}

#DestinationTableSource: {
	TransformOperationId: string & =~"^[0-9a-zA-Z-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#FieldFolder: {
	// <p>A folder has a list of columns. A column can only be in one folder.</p>
	Columns?: [...string]
	// <p>The description for a field folder.</p>
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(500)
}

#FieldFolderMap: {...}

#FileFormat: "CSV" | "TSV" | "CLF" | "ELF" | "XLSX" | "JSON"

#FilterOperation: {
	// <p>An expression that must evaluate to a Boolean value. Rows for which the expression
	// evaluates to true are kept in the dataset.</p>
	ConditionExpression?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	DateFilterCondition?: #DataSetDateFilterCondition
	NumericFilterCondition?: #DataSetNumericFilterCondition
	StringFilterCondition?: #DataSetStringFilterCondition
}

#FiltersOperation: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	FilterOperations: [...#FilterOperation]
	Source: #TransformOperationSource
}

#GeoSpatialColumnGroup: {
	// <p>Columns in this hierarchy.</p>
	Columns: [...string & strings.MinRunes(1) & strings.MaxRunes(127)]
	CountryCode?: #GeoSpatialCountryCode
	// <p>A display name for the hierarchy.</p>
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#GeoSpatialCountryCode: "US"

#GeoSpatialDataRole: "COUNTRY" | "STATE" | "COUNTY" | "CITY" | "POSTCODE" | "LONGITUDE" | "LATITUDE" | "POLITICAL1" | "CENSUS_TRACT" | "CENSUS_BLOCK_GROUP" | "CENSUS_BLOCK"

#ImportTableOperation: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	Source: #ImportTableOperationSource
}

#ImportTableOperationSource: {
	ColumnIdMappings?: [...#DataSetColumnIdMapping]
	SourceTableId: string & =~"^[0-9a-zA-Z-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#IncrementalRefresh: {
	LookbackWindow: #LookbackWindow
}

#IngestionWaitPolicy: {
	// <p>The maximum time (in hours) to wait for Ingestion to complete. Default timeout is 36 hours.
	// Applicable only when DataSetImportMode mode is set to SPICE and WaitForSpiceIngestion is set to true.</p>
	IngestionWaitTimeInHours?: number & >=1 & <=36
	// <p>Wait for SPICE ingestion to finish to mark dataset creation/update successful. Default (true).
	// Applicable only when DataSetImportMode mode is set to SPICE.</p>
	WaitForSpiceIngestion?: bool
}

#InlineCustomInstruction: {
	InstructionText: string & strings.MinRunes(0) & strings.MaxRunes(50000)
	UploadedDocumentMetadata?: #UploadedDocumentMetadata
}

#InputColumn: {
	Id?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>The name of this column in the underlying data source.</p>
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
	SubType?: #ColumnDataSubType
	Type: #InputColumnDataType
}

#InputColumnDataType: "STRING" | "INTEGER" | "DECIMAL" | "DATETIME" | "BIT" | "BOOLEAN" | "JSON" | "SEMISTRUCT"

#IntegerDatasetParameter: {
	DefaultValues?: #IntegerDatasetParameterDefaultValues
	// <p>An identifier for the integer parameter created in the dataset.</p>
	Id: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>The name of the integer parameter that is created in the dataset.</p>
	Name: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ValueType: #DatasetParameterValueType
}

#IntegerDatasetParameterDefaultValues: {
	// <p>A list of static default values for a given integer parameter.</p>
	StaticValues?: [...int]
}

#JoinInstruction: {
	LeftJoinKeyProperties?: #JoinKeyProperties
	// <p>The operand on the left side of a join.</p>
	LeftOperand: string & =~"^[0-9a-zA-Z-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// <p>The join instructions provided in the <code>ON</code> clause of a join.</p>
	OnClause: string & strings.MinRunes(1) & strings.MaxRunes(512)
	RightJoinKeyProperties?: #JoinKeyProperties
	// <p>The operand on the right side of a join.</p>
	RightOperand: string & =~"^[0-9a-zA-Z-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Type: #JoinType
}

#JoinKeyProperties: {
	// <p>A value that indicates that a row in a table is uniquely identified by the columns in
	// a join key. This is used by Amazon QuickSight to optimize query performance.</p>
	UniqueKey?: bool
}

#JoinOperandProperties: {
	OutputColumnNameOverrides: [...#OutputColumnNameOverride]
}

#JoinOperation: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	LeftOperand: #TransformOperationSource
	LeftOperandProperties?: #JoinOperandProperties
	OnClause: string & strings.MinRunes(1) & strings.MaxRunes(512)
	RightOperand: #TransformOperationSource
	RightOperandProperties?: #JoinOperandProperties
	Type: #JoinOperationType
}

#JoinOperationType: "INNER" | "OUTER" | "LEFT" | "RIGHT"

#JoinType: "INNER" | "OUTER" | "LEFT" | "RIGHT"

#LogicalTable: {
	// <p>A display name for the logical table.</p>
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// <p>Transform operations that act on this logical table. For this structure to be valid, only one of the attributes can be non-null. </p>
	DataTransforms?: [...#TransformOperation]
	Source: #LogicalTableSource
}

#LogicalTableMap: {...}

#LogicalTableSource: {
	// <p>The Amazon Resource Number (ARN) of the parent dataset.</p>
	DataSetArn?: string
	JoinInstruction?: #JoinInstruction
	// <p>Physical table ID.</p>
	PhysicalTableId?: string & =~"^[0-9a-zA-Z-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#LookbackWindow: {
	// <p>The name of the lookback window column.</p>
	ColumnName: string
	// <p>The lookback window column size.</p>
	Size: number & >=1
	SizeUnit: #LookbackWindowSizeUnit
}

#LookbackWindowSizeUnit: "HOUR" | "DAY" | "WEEK"

#NewDefaultValues: {
	// <p>A list of static default values for a given date time parameter.</p>
	DateTimeStaticValues?: [...string]
	// <p>A list of static default values for a given decimal parameter.</p>
	DecimalStaticValues?: [...number]
	// <p>A list of static default values for a given integer parameter.</p>
	IntegerStaticValues?: [...int]
	// <p>A list of static default values for a given string parameter.</p>
	StringStaticValues?: [...string & strings.MinRunes(0) & strings.MaxRunes(512)]
}

#OutputColumn: {
	// <p>A description for a column.</p>
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	Id?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// <p>The display name of the column..</p>
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	SubType?: #ColumnDataSubType
	Type?: #ColumnDataType
}

#OutputColumnNameOverride: {
	OutputColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
	SourceColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(127)
}

#OverrideDatasetParameterOperation: {
	NewDefaultValues?: #NewDefaultValues
	// <p>The new name for the parameter.</p>
	NewParameterName?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// <p>The name of the parameter to be overridden with different values.</p>
	ParameterName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#ParentDataSet: {
	DataSetArn: string
	InputColumns: [...#InputColumn]
}

#PerformanceConfiguration: {
	UniqueKeys?: [...#UniqueKey]
}

#PhysicalTable: {
	CustomSql?: #CustomSql
	RelationalTable?: #RelationalTable
	S3Source?: #S3Source
	SaaSTable?: #SaaSTable
}

#PhysicalTableMap: {...}

#PivotConfiguration: {
	LabelColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	PivotedLabels: [...#PivotedLabel]
}

#PivotOperation: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	GroupByColumnNames?: [...string & strings.MinRunes(1) & strings.MaxRunes(127)]
	PivotConfiguration: #PivotConfiguration
	Source: #TransformOperationSource
	ValueColumnConfiguration: #ValueColumnConfiguration
}

#PivotedLabel: {
	LabelName: string & strings.MinRunes(0) & strings.MaxRunes(2047)
	NewColumnId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	NewColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
}

#ProjectOperation: {
	Alias?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// <p>Projected columns.</p>
	ProjectedColumns?: [...string]
	Source?: #TransformOperationSource
}

#RefreshConfiguration: {
	IncrementalRefresh: #IncrementalRefresh
}

#RefreshFailureAlertStatus: "ENABLED" | "DISABLED"

#RefreshFailureConfiguration: {
	EmailAlert?: #RefreshFailureEmailAlert
}

#RefreshFailureEmailAlert: {
	AlertStatus?: #RefreshFailureAlertStatus
}

#RelationalTable: {
	// <p>The catalog associated with a table.</p>
	Catalog?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	// <p>The Amazon Resource Name (ARN) for the data source.</p>
	DataSourceArn: string
	// <p>The column schema of the table.</p>
	InputColumns: [...#InputColumn]
	// <p>The name of the relational table.</p>
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>The schema name. This name applies to certain relational database engines.</p>
	Schema?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#RenameColumnOperation: {
	// <p>The name of the column to be renamed.</p>
	ColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// <p>The new name for the column.</p>
	NewColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
}

#RenameColumnsOperation: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	RenameColumnOperations: [...#RenameColumnOperation]
	Source: #TransformOperationSource
}

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

#RowLevelPermissionConfiguration: {
	RowLevelPermissionDataSet?: #RowLevelPermissionDataSet
	TagConfiguration?: #RowLevelPermissionTagConfiguration
}

#RowLevelPermissionDataSet: {
	// <p>The Amazon Resource Name (ARN) of the dataset that contains permissions for RLS.</p>
	Arn: string
	FormatVersion?: #RowLevelPermissionFormatVersion
	// <p>The namespace associated with the dataset that contains permissions for RLS.</p>
	Namespace?: string & =~"^[a-zA-Z0-9._-]*$" & strings.MinRunes(0) & strings.MaxRunes(64)
	PermissionPolicy: #RowLevelPermissionPolicy
	Status?: #Status
}

#RowLevelPermissionFormatVersion: "VERSION_1" | "VERSION_2"

#RowLevelPermissionPolicy: "GRANT_ACCESS" | "DENY_ACCESS"

#RowLevelPermissionTagConfiguration: {
	Status?: #Status
	// <p>A list of tag configuration rules to apply to a dataset. All tag configurations have the OR condition. Tags within each tile will be joined (AND). At least one rule in this structure must have all tag values assigned to it to apply Row-level security (RLS) to the dataset.</p>
	TagRuleConfigurations?: [...[...string & strings.MinRunes(1) & strings.MaxRunes(128)]]
	// <p>A set of rules associated with row-level security, such as the tag names and columns that they are assigned to.</p>
	TagRules: [...#RowLevelPermissionTagRule]
}

#RowLevelPermissionTagRule: {
	// <p>The column name that a tag key is assigned to.</p>
	ColumnName: string
	// <p>A string that you want to use to filter by all the values in a column in the dataset and don’t want to list the values one by one. For example, you can use an asterisk as your match all value.</p>
	MatchAllValue?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>The unique key for a tag.</p>
	TagKey: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>A string that you want to use to delimit the values when you pass the values at run time. For example, you can delimit the values with a comma.</p>
	TagMultiValueDelimiter?: string & strings.MinRunes(0) & strings.MaxRunes(10)
}

#S3Source: {
	// <p>The Amazon Resource Name (ARN) for the data source.</p>
	DataSourceArn: string
	// <p>A physical table type for an S3 data source.</p>
	// <note>
	// <p>For files that aren't JSON, only <code>STRING</code> data types are supported in input columns.</p>
	// </note>
	InputColumns: [...#InputColumn]
	UploadSettings?: #UploadSettings
}

#SaaSTable: {
	DataSourceArn: string
	InputColumns: [...#InputColumn]
	TablePath: [...#TablePathElement]
}

#SemanticModelConfiguration: {
	SemanticMetadata?: [...#DataSetSemanticMetadata]
	TableMap?: #SemanticTableMap
}

#SemanticTable: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	DestinationTableId: string & =~"^[0-9a-zA-Z-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
	RowLevelPermissionConfiguration?: #RowLevelPermissionConfiguration
	SemanticMetadata?: #TableSemanticMetadata
}

#SemanticTableMap: {...}

#SharedColumnSemanticMetadata: {
	ColumnNames?: [...string]
	ColumnProperties: [...#ColumnSemanticProperty]
}

#SourceTable: {
	DataSet?: #ParentDataSet
	PhysicalTableId?: string & =~"^[0-9a-zA-Z-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#SourceTableMap: {...}

#Status: "ENABLED" | "DISABLED"

#StringDatasetParameter: {
	DefaultValues?: #StringDatasetParameterDefaultValues
	// <p>An identifier for the string parameter that is created in the dataset.</p>
	Id: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>The name of the string parameter that is created in the dataset.</p>
	Name: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ValueType: #DatasetParameterValueType
}

#StringDatasetParameterDefaultValues: {
	// <p>A list of static default values for a given string parameter.</p>
	StaticValues?: [...string & strings.MinRunes(0) & strings.MaxRunes(512)]
}

#TablePathElement: {
	Id?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TableSemanticMetadata: {
	ColumnMetadata?: [...#SharedColumnSemanticMetadata]
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TagColumnOperation: {
	// <p>The column that this operation acts on.</p>
	ColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// <p>The dataset column tag, currently only used for geospatial type tagging.</p>
	// <note>
	// <p>This is not tags for the Amazon Web Services tagging feature.</p>
	// </note>
	Tags: [...#ColumnTag]
}

#TextQualifier: "DOUBLE_QUOTE" | "SINGLE_QUOTE"

#TimeGranularity: "YEAR" | "QUARTER" | "MONTH" | "WEEK" | "DAY" | "HOUR" | "MINUTE" | "SECOND" | "MILLISECOND"

#TransformOperation: {
	CastColumnTypeOperation?: #CastColumnTypeOperation
	CreateColumnsOperation?: #CreateColumnsOperation
	FilterOperation?: #FilterOperation
	OverrideDatasetParameterOperation?: #OverrideDatasetParameterOperation
	ProjectOperation?: #ProjectOperation
	RenameColumnOperation?: #RenameColumnOperation
	TagColumnOperation?: #TagColumnOperation
	UntagColumnOperation?: #UntagColumnOperation
}

#TransformOperationSource: {
	ColumnIdMappings?: [...#DataSetColumnIdMapping]
	TransformOperationId: string & =~"^[0-9a-zA-Z-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#TransformStep: {
	AggregateStep?: #AggregateOperation
	AppendStep?: #AppendOperation
	CastColumnTypesStep?: #CastColumnTypesOperation
	CreateColumnsStep?: #CreateColumnsOperation
	FiltersStep?: #FiltersOperation
	ImportTableStep?: #ImportTableOperation
	JoinStep?: #JoinOperation
	PivotStep?: #PivotOperation
	ProjectStep?: #ProjectOperation
	RenameColumnsStep?: #RenameColumnsOperation
	UnpivotStep?: #UnpivotOperation
}

#TransformStepMap: {...}

#UniqueKey: {
	ColumnNames: [...string & strings.MinRunes(1) & strings.MaxRunes(127)]
}

#UnpivotOperation: {
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(64)
	ColumnsToUnpivot: [...#ColumnToUnpivot]
	Source: #TransformOperationSource
	UnpivotedLabelColumnId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	UnpivotedLabelColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
	UnpivotedValueColumnId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	UnpivotedValueColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
}

#UntagColumnOperation: {
	// <p>The column that this operation acts on.</p>
	ColumnName: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// <p>The column tags to remove from this column.</p>
	TagNames: [...#ColumnTagName]
}

#UploadSettings: {
	// <p>Whether the file has a header row, or the files each have a header row.</p>
	ContainsHeader?: bool
	// <p>The delimiter between values in the file.</p>
	Delimiter?: string & strings.MinRunes(1) & strings.MaxRunes(1)
	Format?: #FileFormat
	// <p>A row number to start reading data from.</p>
	StartFromRow?: number & >=1
	TextQualifier?: #TextQualifier
}

#UploadedDocumentMetadata: {
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(127)
}

#ValueColumnConfiguration: {
	AggregationFunction?: #DataPrepAggregationFunction
}
