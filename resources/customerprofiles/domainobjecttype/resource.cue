package domainobjecttype

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CustomerProfiles::DomainObjectType
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CustomerProfiles::DomainObjectType"
	Properties: #Properties
}
