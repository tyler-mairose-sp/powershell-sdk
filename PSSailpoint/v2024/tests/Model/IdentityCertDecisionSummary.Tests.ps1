#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSSailpointV2024' -name 'V2024IdentityCertDecisionSummary' {
    Context 'V2024IdentityCertDecisionSummary' {
        It 'Initialize-V2024IdentityCertDecisionSummary' {
            # a simple test to create an object
            #$NewObject = Initialize-V2024IdentityCertDecisionSummary -EntitlementDecisionsMade "TEST_VALUE" -AccessProfileDecisionsMade "TEST_VALUE" -RoleDecisionsMade "TEST_VALUE" -AccountDecisionsMade "TEST_VALUE" -EntitlementDecisionsTotal "TEST_VALUE" -AccessProfileDecisionsTotal "TEST_VALUE" -RoleDecisionsTotal "TEST_VALUE" -AccountDecisionsTotal "TEST_VALUE" -EntitlementsApproved "TEST_VALUE" -EntitlementsRevoked "TEST_VALUE" -AccessProfilesApproved "TEST_VALUE" -AccessProfilesRevoked "TEST_VALUE" -RolesApproved "TEST_VALUE" -RolesRevoked "TEST_VALUE" -AccountsApproved "TEST_VALUE" -AccountsRevoked "TEST_VALUE"
            #$NewObject | Should -BeOfType IdentityCertDecisionSummary
            #$NewObject.property | Should -Be 0
        }
    }
}
