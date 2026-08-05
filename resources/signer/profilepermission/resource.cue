package profilepermission

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Signer::ProfilePermission
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Signer::ProfilePermission"
	Properties: #Properties
}
