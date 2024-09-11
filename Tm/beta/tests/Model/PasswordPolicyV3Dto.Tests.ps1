#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Tm.Beta' -name 'BetaPasswordPolicyV3Dto' {
    Context 'BetaPasswordPolicyV3Dto' {
        It 'Initialize-BetaPasswordPolicyV3Dto' {
            # a simple test to create an object
            #$NewObject = Initialize-BetaPasswordPolicyV3Dto -Id "TEST_VALUE" -Description "TEST_VALUE" -Name "TEST_VALUE" -DateCreated "TEST_VALUE" -LastUpdated "TEST_VALUE" -FirstExpirationReminder "TEST_VALUE" -AccountIdMinWordLength "TEST_VALUE" -AccountNameMinWordLength "TEST_VALUE" -MinAlpha "TEST_VALUE" -MinCharacterTypes "TEST_VALUE" -MaxLength "TEST_VALUE" -MinLength "TEST_VALUE" -MaxRepeatedChars "TEST_VALUE" -MinLower "TEST_VALUE" -MinNumeric "TEST_VALUE" -MinSpecial "TEST_VALUE" -MinUpper "TEST_VALUE" -PasswordExpiration "TEST_VALUE" -DefaultPolicy "TEST_VALUE" -EnablePasswdExpiration "TEST_VALUE" -RequireStrongAuthn "TEST_VALUE" -RequireStrongAuthOffNetwork "TEST_VALUE" -RequireStrongAuthUntrustedGeographies "TEST_VALUE" -UseAccountAttributes "TEST_VALUE" -UseDictionary "TEST_VALUE" -UseIdentityAttributes "TEST_VALUE" -ValidateAgainstAccountId "TEST_VALUE" -ValidateAgainstAccountName "TEST_VALUE" -Created "TEST_VALUE" -Modified "TEST_VALUE" -SourceIds "TEST_VALUE"
            #$NewObject | Should -BeOfType PasswordPolicyV3Dto
            #$NewObject.property | Should -Be 0
        }
    }
}
