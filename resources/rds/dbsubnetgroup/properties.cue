package dbsubnetgroup

import "strings"

#Properties: {
	// The description for the DB subnet group.
	DBSubnetGroupDescription: string
	// The name for the DB subnet group. This value is stored as a lowercase string.
 Constraints:
  +  Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens.
  +  Must not be default.
  +  First character must be a letter.
  
 Example: ``mydbsubnetgroup``
	DBSubnetGroupName?: string
	// The EC2 Subnet IDs for the DB subnet group.
	SubnetIds: [...string]
	// Tags to assign to the DB subnet group.
	Tags?: [...#Tag]
}

#Tag: {
	// A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with ``aws:`` or ``rds:``. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with ``aws:`` or ``rds:``. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
