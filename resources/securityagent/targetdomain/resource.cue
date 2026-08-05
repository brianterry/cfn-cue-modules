package targetdomain

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecurityAgent::TargetDomain
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityAgent::TargetDomain"
	Properties: #Properties
}
