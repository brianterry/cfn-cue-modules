package vpngateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself.
// For more information, see [](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPNGateway"
	Properties: #Properties
}
