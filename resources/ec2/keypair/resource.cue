package keypair

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a key pair for use with an EC2long instance as follows:
// +  To import an existing key pair, include the ``PublicKeyMaterial`` property.
// +  To create a new key pair, omit the ``PublicKeyMaterial`` property.
// When you import an existing key pair, you specify the public key material for the key. We assume that you have the private key material for the key. CFNlong does not create or return the private key material when you import a key pair.
// When you create a new key pair, the private key is saved to SYSlong Parameter Store, using a parameter with the following name: ``/ec2/keypair/{key_pair_id}``. For more information about retrieving private key, and the required permissions, see [Create a key pair using](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-key-pairs.html#create-key-pair-cloudformation) in the *User Guide*.
// When CFN deletes a key pair that was created or imported by a stack, it also deletes the parameter that was used to store the private key material in Parameter Store.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::KeyPair"
	Properties: #Properties
}
