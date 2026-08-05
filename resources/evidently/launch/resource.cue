package launch

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Evidently::Launch.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Evidently::Launch"
	Properties: #Properties
}
