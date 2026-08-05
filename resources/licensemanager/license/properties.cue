package license

import "strings"

#Properties: {
	// Beneficiary of the license.
	Beneficiary: string
	ConsumptionConfiguration: #ConsumptionConfiguration
	Entitlements: [...#Entitlement]
	// Home region for the created license.
	HomeRegion: string
	Issuer: #IssuerData
	LicenseMetadata?: [...#Metadata]
	// Name for the created license.
	LicenseName: string
	// Product name for the created license.
	ProductName: string
	// ProductSKU of the license.
	ProductSKU: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	Status?: #LicenseStatus
	// A list of tags to attach.
	Tags?: [...#Tag]
	Validity: #ValidityDateFormat
}

#BorrowConfiguration: {
	AllowEarlyCheckIn: bool
	MaxTimeToLiveInMinutes: int
}

#ConsumptionConfiguration: {
	BorrowConfiguration?: #BorrowConfiguration
	ProvisionalConfiguration?: #ProvisionalConfiguration
	RenewType?: string
}

#Entitlement: {
	AllowCheckIn?: bool
	MaxCount?: int
	Name: string
	Overage?: bool
	Unit: string
	Value?: string
}

#IssuerData: {
	Name: string
	SignKey?: string
}

#Metadata: {
	Name: string
	Value: string
}

#ProvisionalConfiguration: {
	MaxTimeToLiveInMinutes: int
}

#Tag: {
	// The key name of the tag.
	Key: string
	// The value for the tag.
	Value: string
}

#ValidityDateFormat: {
	// Validity begin date for the license.
	Begin: string
	// Validity begin date for the license.
	End: string
}
