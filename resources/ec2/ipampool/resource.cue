package ipampool

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema of AWS::EC2::IPAMPool Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::IPAMPool"
	Properties: #Properties
}
