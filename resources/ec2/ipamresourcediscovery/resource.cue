package ipamresourcediscovery

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema of AWS::EC2::IPAMResourceDiscovery Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::IPAMResourceDiscovery"
	Properties: #Properties
}
