package sourceapiassociation

#Properties: {
	// Description of the SourceApiAssociation.
	Description?: string
	// Identifier of the Merged GraphQLApi to associate. It could be either GraphQLApi ApiId or ARN
	MergedApiIdentifier?: string
	// Customized configuration for SourceApiAssociation.
	SourceApiAssociationConfig?: #SourceApiAssociationConfig
	// Identifier of the Source GraphQLApi to associate. It could be either GraphQLApi ApiId or ARN
	SourceApiIdentifier?: string
}

#SourceApiAssociationConfig: {
	// Configuration of the merged behavior for the association. For example when it could be auto or has to be manual.
	MergeType?: "AUTO_MERGE" | "MANUAL_MERGE"
}
