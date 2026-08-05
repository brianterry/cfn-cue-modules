package blueprint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Blueprint. Registers a blueprint with AWS Glue.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Blueprint"
	Properties: #Properties
}
