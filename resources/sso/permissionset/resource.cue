package permissionset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for SSO PermissionSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSO::PermissionSet"
	Properties: #Properties
}
