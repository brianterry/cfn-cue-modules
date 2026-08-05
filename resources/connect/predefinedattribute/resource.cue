package predefinedattribute

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::PredefinedAttribute
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::PredefinedAttribute"
	Properties: #Properties
}
