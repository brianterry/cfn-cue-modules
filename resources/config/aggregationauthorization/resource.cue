package aggregationauthorization

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Config::AggregationAuthorization
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::AggregationAuthorization"
	Properties: #Properties
}
