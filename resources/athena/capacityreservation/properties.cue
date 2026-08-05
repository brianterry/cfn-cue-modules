package capacityreservation

import "strings"

#Properties: {
	CapacityAssignmentConfiguration?: #CapacityAssignmentConfiguration
	// The reservation name.
	Name: string & =~"[a-zA-Z0-9._-]{1,128}"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The number of DPUs to request to be allocated to the reservation.
	TargetDpus: int & >=1
}

#CapacityAssignment: {
	WorkgroupNames: #WorkgroupNames
}

#CapacityAssignmentConfiguration: {
	CapacityAssignments: #CapacityAssignments
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
