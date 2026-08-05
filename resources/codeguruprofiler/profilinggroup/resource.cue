package profilinggroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// This resource schema represents the Profiling Group resource in the Amazon CodeGuru Profiler service.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeGuruProfiler::ProfilingGroup"
	Properties: #Properties
}
