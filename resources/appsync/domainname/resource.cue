package domainname

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppSync::DomainName
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::DomainName"
	Properties: #Properties
}
