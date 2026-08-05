package tagoptionassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceCatalog::TagOptionAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::TagOptionAssociation"
	Properties: #Properties
}
