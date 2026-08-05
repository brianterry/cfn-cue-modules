package securityprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::SecurityProfile
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::SecurityProfile"
	Properties: #Properties
}
