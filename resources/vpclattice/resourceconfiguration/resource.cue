package resourceconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// VpcLattice ResourceConfiguration CFN resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::ResourceConfiguration"
	Properties: #Properties
}
