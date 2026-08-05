package delegatedadmin

#Properties: {
	// The AWS-account identifier of the account to designate as the Security Hub CSPM administrator account.
	AdminAccountId: string & =~"^[0-9]{12}$"
}
