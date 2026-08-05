package instance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for Identity Center (SSO) Instance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSO::Instance"
	Properties: #Properties
}
