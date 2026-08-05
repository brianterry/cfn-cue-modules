package index

#Properties: {
	Tags?: #TagMap
	Type: #IndexType
}

#IndexState: "ACTIVE" | "CREATING" | "DELETING" | "DELETED" | "UPDATING"

#IndexType: "LOCAL" | "AGGREGATOR"

#TagMap: {...}
