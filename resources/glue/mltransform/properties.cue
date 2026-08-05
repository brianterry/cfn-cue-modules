package mltransform

#Properties: {
	Description?: string
	GlueVersion?: string
	InputRecordTables: #InputRecordTables
	MaxCapacity?: number
	MaxRetries?: int
	Name?: string
	NumberOfWorkers?: int
	Role: string
	Tags?: {...}
	Timeout?: int
	TransformEncryption?: #TransformEncryption
	TransformParameters: #TransformParameters
	WorkerType?: string
}

#FindMatchesParameters: {
	AccuracyCostTradeoff?: number
	EnforceProvidedLabels?: bool
	PrecisionRecallTradeoff?: number
	PrimaryKeyColumnName: string
}

#GlueTables: {
	CatalogId?: string
	ConnectionName?: string
	DatabaseName: string
	TableName: string
}

#InputRecordTables: {
	GlueTables?: [...#GlueTables]
}

#MLUserDataEncryption: {
	KmsKeyId?: string
	MLUserDataEncryptionMode: string
}

#TransformEncryption: {
	MLUserDataEncryption?: #MLUserDataEncryption
	TaskRunSecurityConfigurationName?: string
}

#TransformParameters: {
	FindMatchesParameters?: #FindMatchesParameters
	TransformType: string
}
