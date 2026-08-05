package capacityreservation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: #Arn
	// The status of the reservation.
	Status: #CapacityReservationStatus
	// The number of DPUs Athena has provisioned and allocated for the reservation
	AllocatedDpus: int & >=0
	// The date and time the reservation was created.
	CreationTime: string
	// The timestamp when the last successful allocated was made
	LastSuccessfulAllocationTime: string
}
