package principalpermissions

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::LakeFormation::PrincipalPermissions`` resource represents the permissions that a principal has on a GLUDC resource (such as GLUlong databases or GLUlong tables). When you create a ``PrincipalPermissions`` resource, the permissions are granted via the LFlong``GrantPermissions`` API operation. When you delete a ``PrincipalPermissions`` resource, the permissions on principal-resource pair are revoked via the LFlong``RevokePermissions`` API operation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LakeFormation::PrincipalPermissions"
	Properties: #Properties
}
