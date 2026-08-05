package streamingdistribution

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudFront::StreamingDistribution
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::StreamingDistribution"
	Properties: #Properties
}
