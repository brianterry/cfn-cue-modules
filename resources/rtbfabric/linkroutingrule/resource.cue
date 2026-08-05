package linkroutingrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RTBFabric::LinkRoutingRule. A routing rule on a link within RTB Fabric that controls request routing based on conditions such as host headers, path matching, and query string parameters.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RTBFabric::LinkRoutingRule"
	Properties: #Properties
}
