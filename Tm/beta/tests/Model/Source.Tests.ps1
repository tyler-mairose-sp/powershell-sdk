#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Tm.Beta' -name 'BetaSource' {
    Context 'BetaSource' {
        It 'Initialize-BetaSource' {
            # a simple test to create an object
            #$NewObject = Initialize-BetaSource -Id "TEST_VALUE" -Name "TEST_VALUE" -Description "TEST_VALUE" -Owner "TEST_VALUE" -Cluster "TEST_VALUE" -AccountCorrelationConfig "TEST_VALUE" -AccountCorrelationRule "TEST_VALUE" -ManagerCorrelationMapping "TEST_VALUE" -ManagerCorrelationRule "TEST_VALUE" -BeforeProvisioningRule "TEST_VALUE" -Schemas "TEST_VALUE" -PasswordPolicies "TEST_VALUE" -Features "TEST_VALUE" -Type "TEST_VALUE" -Connector "TEST_VALUE" -ConnectorClass "TEST_VALUE" -ConnectorAttributes "TEST_VALUE" -DeleteThreshold "TEST_VALUE" -Authoritative "TEST_VALUE" -ManagementWorkgroup "TEST_VALUE" -Healthy "TEST_VALUE" -Status "TEST_VALUE" -Since "TEST_VALUE" -ConnectorId "TEST_VALUE" -ConnectorName "TEST_VALUE" -ConnectionType "TEST_VALUE" -ConnectorImplementationId "TEST_VALUE" -Created "TEST_VALUE" -Modified "TEST_VALUE" -CredentialProviderEnabled "TEST_VALUE" -Category "TEST_VALUE"
            #$NewObject | Should -BeOfType Source
            #$NewObject.property | Should -Be 0
        }
    }
}
