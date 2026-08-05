package profile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Route53Profiles::Profile
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Profiles::Profile"
	Properties: #Properties
}
