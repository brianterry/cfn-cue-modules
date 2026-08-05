package framework

import "github.com/brianterry/cfn-cue-modules/cfn"

// Contains detailed information about a framework. Frameworks contain controls, which evaluate and report on your backup events and resources. Frameworks generate daily compliance results.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::Framework"
	Properties: #Properties
}
