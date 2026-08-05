package capacityreservation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string
	AvailableInstanceCount: int
	TotalInstanceCount: int
	StartDate: string
	CapacityReservationArn: string
	CreateDate: string
	State: string
	OwnerId: string
	ReservationType: string
	CapacityAllocationSet: [...#CapacityAllocation]
	CommitmentInfo: {
	CommitmentEndDate?: string
	CommittedInstanceCount?: int
}
	DeliveryPreference: string
	CapacityReservationFleetId: string
}
