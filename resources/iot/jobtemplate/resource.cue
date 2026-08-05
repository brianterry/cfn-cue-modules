package jobtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::JobTemplate. Job templates enable you to preconfigure jobs so that you can deploy them to multiple sets of target devices.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::JobTemplate"
	Properties: #Properties
}
