package application

import "strings"

#Properties: {
	ApplicationId: string & =~"[\\w\\d\\.-]{1,60}"
	ApplicationType: "HANA" | "SAP_ABAP"
	// This is an optional parameter for component details to which the SAP ABAP application is attached, such as Web Dispatcher.
	ComponentsInfo?: [...#ComponentInfo]
	Credentials?: [...#Credential]
	// The ARN of the SAP HANA database
	DatabaseArn?: string & =~"^arn:(.+:){2,4}.+$|^arn:(.+:){1,3}.+\\/.+$"
	Instances?: [...#Instance]
	SapInstanceNumber?: string & =~"[0-9]{2}"
	Sid?: string & =~"[A-Z][A-Z0-9]{2}"
	// The tags of a SystemsManagerSAP application.
	Tags?: [...#Tag]
}

#ComponentInfo: {
	ComponentType?: "HANA" | "HANA_NODE" | "ABAP" | "ASCS" | "DIALOG" | "WEBDISP" | "WD" | "ERS"
	Ec2InstanceId?: string & =~"^i-[\\w\\d]{8}$|^i-[\\w\\d]{17}$"
	Sid?: string & =~"[A-Z][A-Z0-9]{2}"
}

#Credential: {
	CredentialType?: "ADMIN"
	DatabaseName?: string & =~"^(?=.{1,100}$).*"
	SecretId?: string & =~"^(?=.{1,100}$).*"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
