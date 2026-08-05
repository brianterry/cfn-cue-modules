package instance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::Instance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::Instance"
	Properties: #Properties
}
