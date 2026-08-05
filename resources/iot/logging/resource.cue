package logging

import "github.com/brianterry/cfn-cue-modules/cfn"

// Logging Options enable you to configure your IoT V2 logging role and default logging level so that you can monitor progress events logs as it passes from your devices through Iot core service.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::Logging"
	Properties: #Properties
}
