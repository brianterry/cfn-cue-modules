package eip

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies an Elastic IP (EIP) address and can, optionally, associate it with an Amazon EC2 instance.
// You can allocate an Elastic IP address from an address pool owned by AWS or from an address pool created from a public IPv4 address range that you have brought to AWS for use with your AWS resources using bring your own IP addresses (BYOIP). For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in the *Amazon EC2 User Guide*.
// For more information, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon EC2 User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::EIP"
	Properties: #Properties
}
