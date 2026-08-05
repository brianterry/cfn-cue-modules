package domainunit

import "github.com/brianterry/cfn-cue-modules/cfn"

// A domain unit enables you to easily organize your assets and other domain entities under specific business units and teams.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::DomainUnit"
	Properties: #Properties
}
