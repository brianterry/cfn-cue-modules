package transactionsearchconfig

#Properties: {
	IndexingPercentage?: #IndexingPercentage
}

#AccountId: string & =~"^\\d{12}$"

#IndexingPercentage: number & >=0 & <=100
