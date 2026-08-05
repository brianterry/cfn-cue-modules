package type

#Properties: {
	// Field definitions of the User-Defined Type
	Fields: [...#Field]
	// Name of the Keyspace which contains the User-Defined Type.
	KeyspaceName: string
	// Name of the User-Defined Type.
	TypeName: string
}

#Field: {
	FieldName: string
	FieldType: string
}
