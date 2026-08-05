package ipamprefixlistresolvertarget

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::IPAMPrefixListResolverTarget
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::IPAMPrefixListResolverTarget"
	Properties: #Properties
}
