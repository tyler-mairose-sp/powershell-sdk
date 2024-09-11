#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Tm.V2024' -name 'V2024Campaign' {
    Context 'V2024Campaign' {
        It 'Initialize-V2024Campaign' {
            # a simple test to create an object
            #$NewObject = Initialize-V2024Campaign -Id "TEST_VALUE" -Name "TEST_VALUE" -Description "TEST_VALUE" -Deadline "TEST_VALUE" -Type "TEST_VALUE" -EmailNotificationEnabled "TEST_VALUE" -AutoRevokeAllowed "TEST_VALUE" -RecommendationsEnabled "TEST_VALUE" -Status "TEST_VALUE" -CorrelatedStatus "TEST_VALUE" -Created "TEST_VALUE" -TotalCertifications "TEST_VALUE" -CompletedCertifications "TEST_VALUE" -Alerts "TEST_VALUE" -Modified "TEST_VALUE" -VarFilter "TEST_VALUE" -SunsetCommentsRequired "TEST_VALUE" -SourceOwnerCampaignInfo "TEST_VALUE" -SearchCampaignInfo "TEST_VALUE" -RoleCompositionCampaignInfo "TEST_VALUE" -SourcesWithOrphanEntitlements "TEST_VALUE" -MandatoryCommentRequirement "TEST_VALUE"
            #$NewObject | Should -BeOfType Campaign
            #$NewObject.property | Should -Be 0
        }
    }
}
