package dataqualityruleset

#Properties: {
	ClientToken?: string
	Description?: string
	Name?: string
	Ruleset?: string
	Tags?: {...}
	TargetTable?: #DataQualityTargetTable
}

#DataQualityTargetTable: {
	DatabaseName?: string
	TableName?: string
}
