package fleetmetric

import "strings"

#Properties: {
	// The aggregation field to perform aggregation and metric emission
	AggregationField?: string
	AggregationType?: #AggregationType
	// The description of a fleet metric
	Description?: string
	// The index name of a fleet metric
	IndexName?: string
	// The name of the fleet metric
	MetricName: string
	// The period of metric emission in seconds
	Period?: int
	// The Fleet Indexing query used by a fleet metric
	QueryString?: string
	// The version of a Fleet Indexing query used by a fleet metric
	QueryVersion?: string
	// An array of key-value pairs to apply to this resource
	Tags?: [...#Tag]
	// The unit of data points emitted by a fleet metric
	Unit?: string
}

#AggregationType: {
	// Fleet Indexing aggregation type names such as Statistics, Percentiles and Cardinality
	Name: string
	// Fleet Indexing aggregation type values
	Values: [...string]
}

#Tag: {
	// The tag's key
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#iso8601UTC: string & =~"^([0-2]\\d{3})-(0[0-9]|1[0-2])-([0-2]\\d|3[01])T([01]\\d|2[0-4]):([0-5]\\d):([0-6]\\d)((\\.\\d{3})?)Z$"
