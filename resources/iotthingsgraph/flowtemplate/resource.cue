package flowtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoTThingsGraph::FlowTemplate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTThingsGraph::FlowTemplate"
	Properties: #Properties
}
