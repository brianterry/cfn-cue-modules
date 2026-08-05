package classifier

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Classifier
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Classifier"
	Properties: #Properties
}
