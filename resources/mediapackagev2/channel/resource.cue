package channel

import "github.com/brianterry/cfn-cue-modules/cfn"

// <p>Represents an entry point into AWS Elemental MediaPackage for an ABR video content stream sent from an upstream encoder such as AWS Elemental MediaLive. The channel continuously analyzes the content that it receives and prepares it to be distributed to consumers via one or more origin endpoints.</p>
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackageV2::Channel"
	Properties: #Properties
}
