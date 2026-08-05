package ipamresourcediscoveryassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema of AWS::EC2::IPAMResourceDiscoveryAssociation Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::IPAMResourceDiscoveryAssociation"
	Properties: #Properties
}
