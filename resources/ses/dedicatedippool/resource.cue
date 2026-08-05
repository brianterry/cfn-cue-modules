package dedicatedippool

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::DedicatedIpPool
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::DedicatedIpPool"
	Properties: #Properties
}
