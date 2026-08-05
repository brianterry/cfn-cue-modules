package multiregionendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::MultiRegionEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::MultiRegionEndpoint"
	Properties: #Properties
}
