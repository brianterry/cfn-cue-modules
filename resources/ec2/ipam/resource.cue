package ipam

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema of AWS::EC2::IPAM Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::IPAM"
	Properties: #Properties
}
