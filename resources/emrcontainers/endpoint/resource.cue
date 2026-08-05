package endpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema of AWS::EMRContainers::Endpoint Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMRContainers::Endpoint"
	Properties: #Properties
}
