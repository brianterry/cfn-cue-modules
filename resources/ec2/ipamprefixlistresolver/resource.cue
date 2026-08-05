package ipamprefixlistresolver

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::IPAMPrefixListResolver
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::IPAMPrefixListResolver"
	Properties: #Properties
}
