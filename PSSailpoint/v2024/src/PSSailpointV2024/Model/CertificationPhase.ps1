#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum CertificationPhase.

.DESCRIPTION

The current phase of the campaign. * `STAGED`: The campaign is waiting to be activated. * `ACTIVE`: The campaign is active. * `SIGNED`: The reviewer has signed off on the campaign, and it is considered complete. 
#>

enum CertificationPhase {
    # enum value: "STAGED"
    STAGED
    # enum value: "ACTIVE"
    ACTIVE
    # enum value: "SIGNED"
    SIGNED
}

