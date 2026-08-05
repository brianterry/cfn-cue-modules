package vpnconnectionroute

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a static route for a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.
 For more information, see [](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the *User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPNConnectionRoute"
	Properties: #Properties
}
