package sourceapiassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of the SourceApiAssociation.
	AssociationId: string
	// ARN of the SourceApiAssociation.
	AssociationArn: string
	// GraphQLApiId of the source API in the association.
	SourceApiId: string
	// ARN of the source API in the association.
	SourceApiArn: string & =~"^arn:aws(-(cn|us-gov))?:[a-z-]+:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$"
	// GraphQLApiId of the Merged API in the association.
	MergedApiId: string
	// ARN of the Merged API in the association.
	MergedApiArn: string & =~"^arn:aws(-(cn|us-gov))?:[a-z-]+:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$"
	// Current status of SourceApiAssociation.
	SourceApiAssociationStatus: "MERGE_SCHEDULED" | "MERGE_FAILED" | "MERGE_SUCCESS" | "MERGE_IN_PROGRESS" | "AUTO_MERGE_SCHEDULE_FAILED" | "DELETION_SCHEDULED" | "DELETION_IN_PROGRESS" | "DELETION_FAILED"
	// Current SourceApiAssociation status details.
	SourceApiAssociationStatusDetail: string
	// Date of last schema successful merge.
	LastSuccessfulMergeDate: string
}
