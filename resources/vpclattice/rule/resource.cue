package rule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a listener rule. Each listener has a default rule for checking connection requests, but you can define additional rules. Each rule consists of a priority, one or more actions, and one or more conditions.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::Rule"
	Properties: #Properties
}
