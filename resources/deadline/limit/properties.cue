package limit

import "strings"

#Properties: {
	AmountRequirementName: string & strings.MaxRunes(1024)
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(100)
	DisplayName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	FarmId: string & =~"^farm-[0-9a-f]{32}$"
	MaxCount: int & >=-1 & <=2147483647
}
