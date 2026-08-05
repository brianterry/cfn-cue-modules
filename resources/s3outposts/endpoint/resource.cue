package endpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for AWS::S3Outposts::Endpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Outposts::Endpoint"
	Properties: #Properties
}
