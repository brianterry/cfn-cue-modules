package rule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a rule for the specified CON instance.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::Rule"
	Properties: #Properties
}
