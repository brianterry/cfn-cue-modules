package topicv2

import "strings"

#Properties: {
	AwsAccountId?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	CustomInstructions?: #CustomInstructions
	DataSetRelations?: [...#DataSetRelation]
	DataSets?: [...#DataSetReference]
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	FolderArns?: [...string]
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Permissions?: [...#ResourcePermission]
	Tags?: [...#Tag]
	TopicId?: string & =~"^[A-Za-z0-9-_.\\\\+]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#CustomInstructions: {
	CustomInstructionsString: string & strings.MinRunes(0) & strings.MaxRunes(5000)
}

#DataSetReference: {
	DataSetArn: string
	DataSetName?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#DataSetRelation: {
	Left: #DataSetRelationEndpoint
	Right: #DataSetRelationEndpoint
}

#DataSetRelationEndpoint: {
	ColumnNames: [...string]
	DataSetArn: string
}

#ResourcePermission: {
	Actions: [...string]
	Principal: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TopicV2Details: {
	DataSetRelations?: [...#DataSetRelation]
	DataSets?: [...#DataSetReference]
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
