#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum DocumentType.

.DESCRIPTION

Enum representing the currently supported document types.  Additional values may be added in the future without notice.
#>

enum DocumentType {
    # enum value: "accessprofile"
    accessprofile
    # enum value: "accountactivity"
    accountactivity
    # enum value: "account"
    account
    # enum value: "aggregation"
    aggregation
    # enum value: "entitlement"
    entitlement
    # enum value: "event"
    event
    # enum value: "identity"
    identity
    # enum value: "role"
    role
}

