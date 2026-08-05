package eipassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Associates an Elastic IP address with an instance or a network interface. Before you can use an Elastic IP address, you must allocate it to your account. For more information about working with Elastic IP addresses, see [Elastic IP address concepts and rules](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#vpc-eip-overview).
 You must specify ``AllocationId`` and either ``InstanceId``, ``NetworkInterfaceId``, or ``PrivateIpAddress``.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::EIPAssociation"
	Properties: #Properties
}
