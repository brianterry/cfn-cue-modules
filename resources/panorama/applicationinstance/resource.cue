package applicationinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates an application instance and deploys it to a device.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Panorama::ApplicationInstance"
	Properties: #Properties
}
