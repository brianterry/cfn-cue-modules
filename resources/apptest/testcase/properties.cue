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

#CloudFormationAction: {
	ActionType?: #CloudFormationActionType
	Resource: string & =~"^\\S{1,1000}$"
}

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

#DatabaseCDC: {
	SourceMetadata: #SourceDatabaseMetadata
	TargetMetadata: #TargetDatabaseMetadata
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

#M2ManagedApplicationAction: {
	ActionType: #M2ManagedActionType
	Properties?: #M2ManagedActionProperties
	Resource: string & =~"^\\S{1,1000}$"
}

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

#OutputFile: {
	FileLocation?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#Script: {
	ScriptLocation: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Type: #ScriptType
}

#SourceDatabaseMetadata: {
	CaptureTool: #CaptureTool
	Type: #SourceDatabase
}

#Step: {
	Action: #StepAction
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	Name: string & =~"^[A-Za-z][A-Za-z0-9_\\-]{1,59}$"
}

#TN3270: {
	ExportDataSetNames?: [...string & =~"^\\S{1,100}$"]
	Script: #Script
}

#TargetDatabaseMetadata: {
	CaptureTool: #CaptureTool
	Type: #TargetDatabase
}

#TestCaseLatestVersion: {
	Status: #TestCaseLifecycle
	Version: number
}
