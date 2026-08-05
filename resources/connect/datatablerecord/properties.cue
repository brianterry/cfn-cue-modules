package datatablerecord

import "strings"

#Properties: {
	DataTableArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	DataTableRecord: {
		PrimaryValues?: [...#Value]
		Values: [...#Value]
	}
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#AttributeId: string & strings.MinRunes(1) & strings.MaxRunes(256)

#Value: {
	AttributeId?: #AttributeId
	AttributeValue?: string
}
