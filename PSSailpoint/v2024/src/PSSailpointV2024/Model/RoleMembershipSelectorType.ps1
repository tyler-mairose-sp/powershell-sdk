#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum RoleMembershipSelectorType.

.DESCRIPTION

This enum characterizes the type of a Role's membership selector. Only the following two are fully supported:  STANDARD: Indicates that Role membership is defined in terms of a criteria expression  IDENTITY_LIST: Indicates that Role membership is conferred on the specific identities listed
#>

enum RoleMembershipSelectorType {
    # enum value: "STANDARD"
    STANDARD
    # enum value: "IDENTITY_LIST"
    IDENTITY_LIST
}

