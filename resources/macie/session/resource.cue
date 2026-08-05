package session

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Macie::Session resource specifies a new Amazon Macie session. A session is an object that represents the Amazon Macie service. A session is required for Amazon Macie to become operational.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Macie::Session"
	Properties: #Properties
}
