#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum ProvisioningState.

.DESCRIPTION

Provisioning state of an account activity item
#>

enum ProvisioningState {
    # enum value: "PENDING"
    PENDING
    # enum value: "FINISHED"
    FINISHED
    # enum value: "UNVERIFIABLE"
    UNVERIFIABLE
    # enum value: "COMMITED"
    COMMITED
    # enum value: "FAILED"
    FAILED
    # enum value: "RETRY"
    RETRY
}

