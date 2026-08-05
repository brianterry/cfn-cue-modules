package account

import "strings"

#Properties: {
	// The friendly name of the member account.
	AccountName: string & strings.MinRunes(1) & strings.MaxRunes(50)
	// The email address of the owner to assign to the new member account.
	Email: string & =~"[^\\s@]+@[^\\s@]+\\.[^\\s@]+" & strings.MinRunes(6) & strings.MaxRunes(64)
	// List of parent nodes for the member account. Currently only one parent at a time is supported. Default is root.
	ParentIds?: [...string & =~"^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"]
	// The name of an IAM role that AWS Organizations automatically preconfigures in the new member account. Default name is OrganizationAccountAccessRole if not specified.
	RoleName?: string & =~"[\\w+=,.@-]{1,64}" & strings.MinRunes(1) & strings.MaxRunes(64)
	// A list of tags that you want to attach to the newly created account. For each tag in the list, you must specify both a tag key and a value.
	Tags?: [...#Tag]
}

#Tag: {
	// The key identifier, or name, of the tag.
	Key: string & =~"[\\s\\S]*" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The string value that's associated with the key of the tag. You can set the value of a tag to an empty string, but you can't set the value of a tag to null.
	Value: string & =~"[\\s\\S]*" & strings.MinRunes(0) & strings.MaxRunes(256)
}
