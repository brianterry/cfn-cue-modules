package userhierarchystructure

#Properties: {
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// Information about the hierarchy structure.
	UserHierarchyStructure?: {
		LevelFive?: #LevelFive
		LevelFour?: #LevelFour
		LevelOne?: #LevelOne
		LevelThree?: #LevelThree
		LevelTwo?: #LevelTwo
	}
}

#HierarchyLevelArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/agent-group-level/[-0-9]*$"

#HierarchyLevelId: string

#LevelFive: {
	HierarchyLevelArn?: #HierarchyLevelArn
	HierarchyLevelId?: #HierarchyLevelId
	Name: #Name
}

#LevelFour: {
	HierarchyLevelArn?: #HierarchyLevelArn
	HierarchyLevelId?: #HierarchyLevelId
	Name: #Name
}

#LevelOne: {
	HierarchyLevelArn?: #HierarchyLevelArn
	HierarchyLevelId?: #HierarchyLevelId
	Name: #Name
}

#LevelThree: {
	HierarchyLevelArn?: #HierarchyLevelArn
	HierarchyLevelId?: #HierarchyLevelId
	Name: #Name
}

#LevelTwo: {
	HierarchyLevelArn?: #HierarchyLevelArn
	HierarchyLevelId?: #HierarchyLevelId
	Name: #Name
}

#Name: string
