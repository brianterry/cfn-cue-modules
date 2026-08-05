package datastore

#Properties: {
	DatastoreName?: #DatastoreName
	KmsKeyArn?: #KmsKeyArn
	Tags?: #Tags
}

#CreatedAt: string

#DatastoreArn: string & =~"^arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:medical-imaging:[a-z0-9-]+:[0-9]{12}:datastore/[0-9a-z]{32}(/imageset/[0-9a-z]{32})?$" & strings.MinRunes(1) & strings.MaxRunes(127)

#DatastoreId: string & =~"^[0-9a-z]{32}$" & strings.MinRunes(0) & strings.MaxRunes(32)

#DatastoreName: string & =~"^[A-Za-z0-9._/#-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)

#DatastoreStatus: "CREATING" | "CREATE_FAILED" | "ACTIVE" | "DELETING" | "DELETED"

#KmsKeyArn: string & strings.MinRunes(1) & strings.MaxRunes(512)

#Tags: {...}

#UpdatedAt: string
