package profileassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Route53Profiles::ProfileAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Profiles::ProfileAssociation"
	Properties: #Properties
}
