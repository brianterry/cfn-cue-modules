package entitlement

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::Entitlement
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::Entitlement"
	Properties: #Properties
}
