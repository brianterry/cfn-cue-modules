package assessmentframework

import "strings"

#Properties: {
	// The compliance type that the framework supports, such as CIS or HIPAA.
	ComplianceType?: string & =~"^[\\w\\W\\s\\S]*$" & strings.MinRunes(0) & strings.MaxRunes(100)
	// The control sets that are associated with the framework.
	ControlSets: [...#ControlSet]
	// The description of the framework.
	Description?: string & =~"^[\\w\\W\\s\\S]*$" & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The name of the framework.
	Name: string & =~"^[^\\\\]*$" & strings.MinRunes(1) & strings.MaxRunes(300)
	// The tags associated with the framework.
	Tags?: [...#Tag]
}

#ControlSet: {
	// The list of controls within the control set.
	Controls: [...#ControlSetControl]
	// The name of the control set.
	Name: string & =~"^[^\\\\_]*$" & strings.MinRunes(1) & strings.MaxRunes(300)
}

#ControlSetControl: {
	// The unique identifier of the control.
	Id: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
}

#Tag: {
	// The key name of the tag.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
