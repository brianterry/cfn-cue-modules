package webaclassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::WebACLAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::WebACLAssociation"
	Properties: #Properties
}
