package autoshiftobservernotificationstatus

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ARCZonalShift::AutoshiftObserverNotificationStatus Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ARCZonalShift::AutoshiftObserverNotificationStatus"
	Properties: #Properties
}
