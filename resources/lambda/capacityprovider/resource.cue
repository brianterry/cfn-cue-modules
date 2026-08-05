package capacityprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a capacity provider that manages compute resources for Lambda functions
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::CapacityProvider"
	Properties: #Properties
}
