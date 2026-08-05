package environmentprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Datazone Environment Profile is pre-configured set of resources and blueprints that provide reusable templates for creating environments.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::EnvironmentProfile"
	Properties: #Properties
}
