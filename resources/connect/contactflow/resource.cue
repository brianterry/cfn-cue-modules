package contactflow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::ContactFlow
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::ContactFlow"
	Properties: #Properties
}
