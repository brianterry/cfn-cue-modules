package dimension

import "github.com/brianterry/cfn-cue-modules/cfn"

// A dimension can be used to limit the scope of a metric used in a security profile for AWS IoT Device Defender.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::Dimension"
	Properties: #Properties
}
