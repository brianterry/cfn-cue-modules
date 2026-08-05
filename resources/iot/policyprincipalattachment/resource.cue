package policyprincipalattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::PolicyPrincipalAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::PolicyPrincipalAttachment"
	Properties: #Properties
}
