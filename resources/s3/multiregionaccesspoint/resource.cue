package multiregionaccesspoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::S3::MultiRegionAccessPoint is an Amazon S3 resource type that dynamically routes S3 requests to easily satisfy geographic compliance requirements based on customer-defined routing policies.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3::MultiRegionAccessPoint"
	Properties: #Properties
}
