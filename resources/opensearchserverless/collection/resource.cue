package collection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Amazon OpenSearchServerless collection resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchServerless::Collection"
	Properties: #Properties
}
