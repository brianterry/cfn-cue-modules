package automationrulev2

import "strings"

#Properties: {
	// A list of actions to be performed when the rule criteria is met
	Actions: [...#AutomationRulesActionV2]
	Criteria: #Criteria
	// A description of the automation rule
	Description: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the automation rule
	RuleName: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for the rule priority
	RuleOrder: number & >=1 & <=1000
	// The status of the automation rule
	RuleStatus?: "ENABLED" | "DISABLED"
	Tags?: #Tags
}

#AllowedOperators: "AND" | "OR"

#AutomationRulesActionV2: {
	ExternalIntegrationConfiguration?: #ExternalIntegrationConfiguration
	FindingFieldsUpdate?: #AutomationRulesFindingFieldsUpdateV2
	// The category of action to be executed by the automation rule
	Type: "FINDING_FIELDS_UPDATE" | "EXTERNAL_INTEGRATION"
}

#AutomationRulesFindingFieldsUpdateV2: {
	// Notes or contextual information for findings that are modified by the automation rule
	Comment?: string & =~".*\\S.*"
	// The severity level to be assigned to findings that match the automation rule criteria
	SeverityId?: int
	// The status to be applied to findings that match automation rule criteria
	StatusId?: int
}

#BooleanFilter: {
	// The value of the boolean
	Value: bool
}

#CompositeFilter: {
	// Enables filtering based on boolean field values
	BooleanFilters?: [...#OcsfBooleanFilter]
	// Enables filtering based on date and timestamp fields
	DateFilters?: [...#OcsfDateFilter]
	// Enables filtering based on map field value
	MapFilters?: [...#OcsfMapFilter]
	// Enables filtering based on numerical field values
	NumberFilters?: [...#OcsfNumberFilter]
	Operator?: #AllowedOperators
	// Enables filtering based on string field values
	StringFilters?: [...#OcsfStringFilter]
}

#Criteria: {
	OcsfFindingCriteria?: #OcsfFindingFilters
}

#DateFilter: {
	DateRange?: #DateRange
	End?: #ISO8601DateString
	Start?: #ISO8601DateString
}

#DateRange: {
	// A date range unit for the date filter
	Unit: "DAYS"
	// A date range value for the date filter
	Value: number
}

#ExternalIntegrationConfiguration: {
	// The ARN of the connector that establishes the integration
	ConnectorArn?: string & =~".*\\S.*"
}

#ISO8601DateString: string & =~"^(\\d\\d\\d\\d)-([0][1-9]|[1][0-2])-([0][1-9]|[1-2](\\d)|[3][0-1])[T](?:([0-1](\\d)|[2][0-3]):[0-5](\\d):[0-5](\\d)|23:59:60)(?:\\.(\\d)+)?([Z]|[+-](\\d\\d)(:?(\\d\\d))?)$"

#MapFilter: {
	// The condition to apply to the key value when filtering findings with a map filter
	Comparison: "EQUALS" | "NOT_EQUALS"
	// The key of the map filter
	Key: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	// The value for the key in the map filter
	Value: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#NumberFilter: {
	// The equal-to condition to be applied to a single field when querying for findings
	Eq?: number
	// The greater-than-equal condition to be applied to a single field when querying for findings
	Gte?: number
	// The less-than-equal condition to be applied to a single field when querying for findings
	Lte?: number
}

#OcsfBooleanFilter: {
	// The name of the field
	FieldName: "compliance.assessments.meets_criteria" | "vulnerabilities.is_exploit_available" | "vulnerabilities.is_fix_available"
	Filter: #BooleanFilter
}

#OcsfDateFilter: {
	// The name of the field
	FieldName: "finding_info.created_time_dt" | "finding_info.first_seen_time_dt" | "finding_info.last_seen_time_dt" | "finding_info.modified_time_dt"
	Filter: #DateFilter
}

#OcsfFindingFilters: {
	// Enables the creation of complex filtering conditions by combining filter
	CompositeFilters?: [...#CompositeFilter]
	CompositeOperator?: #AllowedOperators
}

#OcsfMapFilter: {
	// The name of the field
	FieldName: "resources.tags"
	Filter: #MapFilter
}

#OcsfNumberFilter: {
	// The name of the field
	FieldName: "activity_id" | "compliance.status_id" | "confidence_score" | "finding_info.related_events_count" | "vendor_attributes.severity_id"
	Filter: #NumberFilter
}

#OcsfStringField: "activity_name" | "cloud.account.name" | "cloud.account.uid" | "cloud.provider" | "cloud.region" | "compliance.assessments.category" | "compliance.assessments.name" | "compliance.control" | "compliance.status" | "compliance.standards" | "finding_info.desc" | "finding_info.src_url" | "finding_info.title" | "finding_info.types" | "finding_info.uid" | "finding_info.related_events.uid" | "finding_info.related_events.product.uid" | "finding_info.related_events.title" | "metadata.product.feature.uid" | "metadata.product.name" | "metadata.product.uid" | "metadata.product.vendor_name" | "remediation.desc" | "remediation.references" | "resources.cloud_partition" | "resources.name" | "resources.region" | "resources.type" | "resources.uid" | "vulnerabilities.fix_coverage" | "class_name" | "vendor_attributes.severity"

#OcsfStringFilter: {
	FieldName: #OcsfStringField
	Filter: #StringFilter
}

#StringFilter: {
	// The condition to apply to a string value when filtering findings
	Comparison: "EQUALS" | "PREFIX" | "NOT_EQUALS" | "PREFIX_NOT_EQUALS" | "CONTAINS"
	// The string filter value
	Value: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#Tags: {...}
