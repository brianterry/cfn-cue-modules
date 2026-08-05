package cloudformationprovisionedproduct

import "strings"

#Properties: {
	AcceptLanguage?: "en" | "jp" | "zh"
	NotificationArns?: [...string]
	PathId?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	PathName?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	ProductId?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	ProductName?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	ProvisionedProductName?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	ProvisioningArtifactId?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	ProvisioningArtifactName?: string
	ProvisioningParameters?: [...#ProvisioningParameter]
	ProvisioningPreferences?: #ProvisioningPreferences
	Tags?: [...#Tag]
}

#OutputType: string

#ProvisioningParameter: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	Value: string & strings.MaxRunes(4096)
}

#ProvisioningPreferences: {
	StackSetAccounts?: [...string & =~"^[0-9]{12}$"]
	StackSetFailureToleranceCount?: int & >=0
	StackSetFailureTolerancePercentage?: int & >=0 & <=100
	StackSetMaxConcurrencyCount?: int & >=1
	StackSetMaxConcurrencyPercentage?: int & >=1 & <=100
	StackSetOperationType?: "CREATE" | "UPDATE" | "DELETE"
	StackSetRegions?: [...string & =~"^[a-z]{2}-([a-z]+-)+[1-9]"]
}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
