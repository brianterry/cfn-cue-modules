package natgateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a network address translation (NAT) gateway in the specified subnet. You can create either a public NAT gateway or a private NAT gateway. The default is a public NAT gateway. If you create a public NAT gateway, you must specify an elastic IP address.
 With a NAT gateway, instances in a private subnet can connect to the internet, other AWS services, or an on-premises network using the IP address of the NAT gateway. For more information, see [NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html) in the *Amazon VPC User Guide*.
 If you add a default route (``AWS::EC2::Route`` resource) that points to a NAT gateway, specify the NAT gateway ID for the route's ``NatGatewayId`` property.
  When you associate an Elastic IP address or secondary Elastic IP address with a public NAT gateway, the network border group of the Elastic IP address must match the network border group of the Availability Zone (AZ) that the public NAT gateway is in. Otherwise, the NAT gateway fails to launch. You can see the network border group for the AZ by viewing the details of the subnet. Similarly, you can view the network border group for the Elastic IP address by viewing its details. For more information, see [Allocate an Elastic IP address](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#allocate-eip) in the *Amazon VPC User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NatGateway"
	Properties: #Properties
}
