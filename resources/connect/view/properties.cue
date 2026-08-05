package view

import "strings"

#Properties: {
	// The actions of the view in an array.
	Actions: [...string & =~"^([\\p{L}\\p{N}_.:\\/=+\\-@]+[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(255)]
	// The description of the view.
	Description?: string & =~"^([\\p{L}\\p{N}_.:\\/=+\\-@,()']+[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@,()']*)$" & strings.MinRunes(0) & strings.MaxRunes(4096)
	// The Amazon Resource Name (ARN) of the instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The name of the view.
	Name: string & =~"^([\\p{L}\\p{N}_.:\\/=+\\-@()']+[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@()']*)$" & strings.MinRunes(1) & strings.MaxRunes(512)
	// One or more tags.
	Tags?: [...#Tag]
	// The template of the view as JSON.
	Template: {...}
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. . You can specify a value that is maximum of 256 Unicode characters
	Value: string & strings.MaxRunes(256)
}
