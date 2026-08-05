package vpcendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::OpenSearchServerless::VpcEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchServerless::VpcEndpoint"
	Properties: #Properties
}
