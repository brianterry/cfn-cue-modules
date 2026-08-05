package networkinterfaceattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Attaches an elastic network interface (ENI) to an Amazon EC2 instance. You can use this resource type to attach additional network interfaces to an instance without interruption.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkInterfaceAttachment"
	Properties: #Properties
}
