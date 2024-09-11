#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Tm.Beta' -name 'BetaTriggerExampleInput' {
    Context 'BetaTriggerExampleInput' {
        It 'Initialize-BetaTriggerExampleInput' {
            # a simple test to create an object
            #$NewObject = Initialize-BetaTriggerExampleInput -AccessRequestId "TEST_VALUE" -RequestedFor "TEST_VALUE" -RequestedItems "TEST_VALUE" -RequestedBy "TEST_VALUE" -RequestedItemsStatus "TEST_VALUE" -Source "TEST_VALUE" -Status "TEST_VALUE" -Started "TEST_VALUE" -Completed "TEST_VALUE" -Errors "TEST_VALUE" -Warnings "TEST_VALUE" -Stats "TEST_VALUE" -Identity "TEST_VALUE" -Account "TEST_VALUE" -Changes "TEST_VALUE" -Attributes "TEST_VALUE" -EntitlementCount "TEST_VALUE" -Campaign "TEST_VALUE" -Certification "TEST_VALUE" -TrackingNumber "TEST_VALUE" -Sources "TEST_VALUE" -Action "TEST_VALUE" -Recipient "TEST_VALUE" -Requester "TEST_VALUE" -AccountRequests "TEST_VALUE" -FileName "TEST_VALUE" -OwnerEmail "TEST_VALUE" -OwnerName "TEST_VALUE" -Query "TEST_VALUE" -SearchName "TEST_VALUE" -SearchResults "TEST_VALUE" -SignedS3Url "TEST_VALUE" -Uuid "TEST_VALUE" -Id "TEST_VALUE" -NativeIdentifier "TEST_VALUE" -SourceId "TEST_VALUE" -SourceName "TEST_VALUE" -IdentityId "TEST_VALUE" -IdentityName "TEST_VALUE" -Name "TEST_VALUE" -Type "TEST_VALUE" -Created "TEST_VALUE" -Connector "TEST_VALUE" -Actor "TEST_VALUE" -Deleted "TEST_VALUE" -Modified "TEST_VALUE" -Application "TEST_VALUE" -HealthCheckResult "TEST_VALUE" -PreviousHealthCheckResult "TEST_VALUE"
            #$NewObject | Should -BeOfType TriggerExampleInput
            #$NewObject.property | Should -Be 0
        }
    }
}
