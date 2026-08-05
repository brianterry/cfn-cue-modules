package networkanalyzerconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Create and manage NetworkAnalyzerConfiguration resource.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTWireless::NetworkAnalyzerConfiguration"
	Properties: #Properties
}
