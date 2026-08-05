package datatableattribute

import "strings"

#Properties: {
	DataTableArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Description?: #Description
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Name: string & =~"^[\\p{L}\\p{Z}\\p{N}\\-_.:=@'|]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Primary?: bool
	Validation?: {
		Enum?: {
			Strict?: bool
			Values?: [...string]
		}
		ExclusiveMaximum?: number
		ExclusiveMinimum?: number
		MaxLength?: #LengthBoundary
		MaxValues?: #ValueBoundary
		Maximum?: number
		MinLength?: #LengthBoundary
		MinValues?: #ValueBoundary
		Minimum?: number
		MultipleOf?: number & >=0
	}
	ValueType: "TEXT" | "NUMBER" | "BOOLEAN" | "TEXT_LIST" | "NUMBER_LIST"
}

#AttributeId: string & strings.MinRunes(1) & strings.MaxRunes(256)

#Description: string & =~"^[\\P{C}\r\n\t]+$" & strings.MinRunes(0) & strings.MaxRunes(250)

#LengthBoundary: int & >=0

#ValueBoundary: int & >=0
