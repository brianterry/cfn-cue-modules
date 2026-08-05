package datacellsfilter

import "github.com/brianterry/cfn-cue-modules/cfn"

// A resource schema representing a Lake Formation Data Cells Filter.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LakeFormation::DataCellsFilter"
	Properties: #Properties
}
