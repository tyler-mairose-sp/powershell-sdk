#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Tm.Beta' -name 'BetaManagedCluster' {
    Context 'BetaManagedCluster' {
        It 'Initialize-BetaManagedCluster' {
            # a simple test to create an object
            #$NewObject = Initialize-BetaManagedCluster -Id "TEST_VALUE" -Name "TEST_VALUE" -Pod "TEST_VALUE" -Org "TEST_VALUE" -Type "TEST_VALUE" -Configuration "TEST_VALUE" -KeyPair "TEST_VALUE" -Attributes "TEST_VALUE" -Description "TEST_VALUE" -Redis "TEST_VALUE" -ClientType "TEST_VALUE" -CcgVersion "TEST_VALUE" -PinnedConfig "TEST_VALUE" -LogConfiguration "TEST_VALUE" -Operational "TEST_VALUE" -Status "TEST_VALUE" -PublicKeyCertificate "TEST_VALUE" -PublicKeyThumbprint "TEST_VALUE" -PublicKey "TEST_VALUE" -AlertKey "TEST_VALUE" -ClientIds "TEST_VALUE" -ServiceCount "TEST_VALUE" -CcId "TEST_VALUE" -CreatedAt "TEST_VALUE" -UpdatedAt "TEST_VALUE"
            #$NewObject | Should -BeOfType ManagedCluster
            #$NewObject.property | Should -Be 0
        }
    }
}
