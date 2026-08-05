package influxdbinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Timestream::InfluxDBInstance resource creates an InfluxDB instance.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Timestream::InfluxDBInstance"
	Properties: #Properties
}
