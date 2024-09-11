#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Tm.Beta' -name 'BetaTransformAttributes' {
    Context 'BetaTransformAttributes' {
        It 'Initialize-BetaTransformAttributes' {
            # a simple test to create an object
            #$NewObject = Initialize-BetaTransformAttributes -SourceName "TEST_VALUE" -AttributeName "TEST_VALUE" -AccountSortAttribute "TEST_VALUE" -AccountSortDescending "TEST_VALUE" -AccountReturnFirstLink "TEST_VALUE" -AccountFilter "TEST_VALUE" -AccountPropertyFilter "TEST_VALUE" -RequiresPeriodicRefresh "TEST_VALUE" -VarInput "TEST_VALUE" -Values "TEST_VALUE" -Expression "TEST_VALUE" -PositiveCondition "TEST_VALUE" -NegativeCondition "TEST_VALUE" -FirstDate "TEST_VALUE" -SecondDate "TEST_VALUE" -Operator "TEST_VALUE" -InputFormat "TEST_VALUE" -OutputFormat "TEST_VALUE" -RoundUp "TEST_VALUE" -DefaultRegion "TEST_VALUE" -IgnoreErrors "TEST_VALUE" -Name "TEST_VALUE" -Operation "TEST_VALUE" -IncludeNumbers "TEST_VALUE" -IncludeSpecialChars "TEST_VALUE" -Length "TEST_VALUE" -Uid "TEST_VALUE" -Substring "TEST_VALUE" -Format "TEST_VALUE" -Padding "TEST_VALUE" -Table "TEST_VALUE" -Id "TEST_VALUE" -Regex "TEST_VALUE" -Replacement "TEST_VALUE" -Delimiter "TEST_VALUE" -Index "TEST_VALUE" -Throws "TEST_VALUE" -VarBegin "TEST_VALUE" -BeginOffset "TEST_VALUE" -VarEnd "TEST_VALUE" -EndOffset "TEST_VALUE"
            #$NewObject | Should -BeOfType TransformAttributes
            #$NewObject.property | Should -Be 0
        }
    }
}
