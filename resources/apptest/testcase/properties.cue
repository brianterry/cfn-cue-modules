package testcase

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	Name: string & =~"^[A-Za-z][A-Za-z0-9_\\-]{1,59}$"
	Steps: [...#Step]
	Tags?: #TagMap
}

#Batch: {
	BatchJobName: string & =~"^\\S{1,1000}$"
	BatchJobParameters?: #BatchJobParameters
	ExportDataSetNames?: [...string & =~"^\\S{1,100}$"]
}

#BatchJobParameters: {...}

#CaptureTool: "Precisely" | "AWS DMS"

#CloudFormationAction: {
	ActionType?: #CloudFormationActionType
	Resource: string & =~"^\\S{1,1000}$"
}

#CloudFormationActionType: "Create" | "Delete"

#CompareAction: {
	Input: #Input
	Output?: #Output
}

#DataSet: {
	Ccsid: string & =~"^\\S{1,50}$"
	Format: #Format
	Length: number
	Name: string & =~"^\\S{1,100}$"
	Type: #DataSetType
}

#DataSetType: "PS"

#DatabaseCDC: {
	SourceMetadata: #SourceDatabaseMetadata
	TargetMetadata: #TargetDatabaseMetadata
}

#FileMetadata: {
	DataSets: [...#DataSet]
} | {
	DatabaseCDC: #DatabaseCDC
}

#Format: "FIXED" | "VARIABLE" | "LINE_SEQUENTIAL"

#Input: {
	File: #InputFile
}

#InputFile: {
	FileMetadata: #FileMetadata
	SourceLocation: string & =~"^\\S{1,1000}$"
	TargetLocation: string & =~"^\\S{1,1000}$"
}

#M2ManagedActionProperties: {
	ForceStop?: bool
	ImportDataSetLocation?: string & =~"^\\S{1,1000}$"
}

#M2ManagedActionType: "Configure" | "Deconfigure"

#M2ManagedApplicationAction: {
	ActionType: #M2ManagedActionType
	Properties?: #M2ManagedActionProperties
	Resource: string & =~"^\\S{1,1000}$"
}

#M2NonManagedActionType: "Configure" | "Deconfigure"

#M2NonManagedApplicationAction: {
	ActionType: #M2NonManagedActionType
	Resource: string & =~"^\\S{1,1000}$"
}

#MainframeAction: {
	ActionType: #MainframeActionType
	Properties?: #MainframeActionProperties
	Resource: string & =~"^\\S{1,1000}$"
}

#MainframeActionProperties: {
	DmsTaskArn?: string & =~"^\\S{1,1000}$"
}

#MainframeActionType: {
	Batch: #Batch
} | {
	Tn3270: #TN3270
}

#Output: {
	File: #OutputFile
}

#OutputFile: {
	FileLocation?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#ResourceAction: {
	M2ManagedApplicationAction: #M2ManagedApplicationAction
} | {
	M2NonManagedApplicationAction: #M2NonManagedApplicationAction
} | {
	CloudFormationAction: #CloudFormationAction
}

#Script: {
	ScriptLocation: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Type: #ScriptType
}

#ScriptType: "Selenium"

#SourceDatabase: "z/OS-DB2"

#SourceDatabaseMetadata: {
	CaptureTool: #CaptureTool
	Type: #SourceDatabase
}

#Step: {
	Action: #StepAction
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	Name: string & =~"^[A-Za-z][A-Za-z0-9_\\-]{1,59}$"
}

#StepAction: {
	ResourceAction: #ResourceAction
} | {
	MainframeAction: #MainframeAction
} | {
	CompareAction: #CompareAction
}

#TN3270: {
	ExportDataSetNames?: [...string & =~"^\\S{1,100}$"]
	Script: #Script
}

#TagMap: {...}

#TargetDatabase: "PostgreSQL"

#TargetDatabaseMetadata: {
	CaptureTool: #CaptureTool
	Type: #TargetDatabase
}

#TestCaseLatestVersion: {
	Status: #TestCaseLifecycle
	Version: number
}

#TestCaseLifecycle: "Active" | "Deleting"
