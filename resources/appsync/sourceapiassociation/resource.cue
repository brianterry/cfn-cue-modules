package sourceapiassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppSync::SourceApiAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::SourceApiAssociation"
	Properties: #Properties
}
