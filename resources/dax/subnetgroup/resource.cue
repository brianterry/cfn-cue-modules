package subnetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DAX::SubnetGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DAX::SubnetGroup"
	Properties: #Properties
}
