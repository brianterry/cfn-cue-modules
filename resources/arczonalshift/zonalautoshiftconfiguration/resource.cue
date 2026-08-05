package zonalautoshiftconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ARCZonalShift::ZonalAutoshiftConfiguration Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ARCZonalShift::ZonalAutoshiftConfiguration"
	Properties: #Properties
}
