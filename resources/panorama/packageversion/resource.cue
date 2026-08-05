package packageversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Registers a package version.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Panorama::PackageVersion"
	Properties: #Properties
}
