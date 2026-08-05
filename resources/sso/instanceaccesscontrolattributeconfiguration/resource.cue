package instanceaccesscontrolattributeconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for SSO InstanceAccessControlAttributeConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSO::InstanceAccessControlAttributeConfiguration"
	Properties: #Properties
}
