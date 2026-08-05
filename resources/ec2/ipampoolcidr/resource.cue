package ipampoolcidr

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema of AWS::EC2::IPAMPoolCidr Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::IPAMPoolCidr"
	Properties: #Properties
}
