package ipamscope

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema of AWS::EC2::IPAMScope Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::IPAMScope"
	Properties: #Properties
}
