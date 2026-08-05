package influxdbcluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Timestream::InfluxDBCluster resource creates an InfluxDB cluster.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Timestream::InfluxDBCluster"
	Properties: #Properties
}
