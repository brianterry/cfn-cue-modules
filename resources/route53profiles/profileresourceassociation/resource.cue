package profileresourceassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Route53Profiles::ProfileResourceAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Profiles::ProfileResourceAssociation"
	Properties: #Properties
}
