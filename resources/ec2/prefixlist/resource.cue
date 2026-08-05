package prefixlist

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema of AWS::EC2::PrefixList Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::PrefixList"
	Properties: #Properties
}
