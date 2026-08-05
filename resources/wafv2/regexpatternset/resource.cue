package regexpatternset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Contains a list of Regular expressions based on the provided inputs. RegexPatternSet can be used with other WAF entities with RegexPatternSetReferenceStatement to perform other actions .
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFv2::RegexPatternSet"
	Properties: #Properties
}
