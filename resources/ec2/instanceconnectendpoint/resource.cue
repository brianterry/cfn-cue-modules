package instanceconnectendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::InstanceConnectEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::InstanceConnectEndpoint"
	Properties: #Properties
}
