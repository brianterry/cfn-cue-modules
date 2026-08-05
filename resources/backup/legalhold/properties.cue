package legalhold

#Properties: {
	// The description of the legal hold.
	Description: string
	// The criteria to assign a set of resources, such as resource types or backup vaults.
	RecoveryPointSelection: {
		DateRange?: {
			FromDate: string
			ToDate: string
		}
		ResourceIdentifiers?: [...string]
		VaultNames?: [...string]
	}
	// Optional tags to include.
	Tags?: [...{
		Key: string
		Value: string
	}]
	// The title of the legal hold.
	Title: string
}
