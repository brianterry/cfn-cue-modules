package applicationentitlementassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::ApplicationEntitlementAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::ApplicationEntitlementAssociation"
	Properties: #Properties
}
