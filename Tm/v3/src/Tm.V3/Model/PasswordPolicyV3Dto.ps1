#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
The password policy Id.
.PARAMETER Description
Description for current password policy.
.PARAMETER Name
The name of the password policy.
.PARAMETER DateCreated
Date the Password Policy was created.
.PARAMETER LastUpdated
Date the Password Policy was updated.
.PARAMETER FirstExpirationReminder
The number of days before expiration remaninder.
.PARAMETER AccountIdMinWordLength
The minimun length of account Id. By default is equals to -1.
.PARAMETER AccountNameMinWordLength
The minimun length of account name. By default is equals to -1.
.PARAMETER MinAlpha
Maximum alpha. By default is equals to 0.
.PARAMETER MinCharacterTypes
MinCharacterTypes. By default is equals to -1.
.PARAMETER MaxLength
Maximum length of the password.
.PARAMETER MinLength
Minimum length of the password. By default is equals to 0.
.PARAMETER MaxRepeatedChars
Maximum repetition of the same character in the password. By default is equals to -1.
.PARAMETER MinLower
Minimum amount of lower case character in the password. By default is equals to 0.
.PARAMETER MinNumeric
Minimum amount of numeric characters in the password. By default is equals to 0.
.PARAMETER MinSpecial
Minimum amount of special symbols in the password. By default is equals to 0.
.PARAMETER MinUpper
Minimum amount of upper case symbols in the password. By default is equals to 0.
.PARAMETER PasswordExpiration
Number of days before current password expires. By default is equals to 90.
.PARAMETER DefaultPolicy
Defines whether this policy is default or not. Default policy is created automatically when an org is setup. This field is false by default.
.PARAMETER EnablePasswdExpiration
Defines whether this policy is enabled to expire or not. This field is false by default.
.PARAMETER RequireStrongAuthn
Defines whether this policy require strong Auth or not. This field is false by default.
.PARAMETER RequireStrongAuthOffNetwork
Defines whether this policy require strong Auth of network or not. This field is false by default.
.PARAMETER RequireStrongAuthUntrustedGeographies
Defines whether this policy require strong Auth for untrusted geographies. This field is false by default.
.PARAMETER UseAccountAttributes
Defines whether this policy uses account attributes or not. This field is false by default.
.PARAMETER UseDictionary
Defines whether this policy uses dictionary or not. This field is false by default.
.PARAMETER UseIdentityAttributes
Defines whether this policy uses identity attributes or not. This field is false by default.
.PARAMETER ValidateAgainstAccountId
Defines whether this policy validate against account id or not. This field is false by default.
.PARAMETER ValidateAgainstAccountName
Defines whether this policy validate against account name or not. This field is false by default.
.PARAMETER Created
No description available.
.PARAMETER Modified
No description available.
.PARAMETER SourceIds
List of sources IDs managed by this password policy.
.OUTPUTS

PasswordPolicyV3Dto<PSCustomObject>
#>

function Initialize-PasswordPolicyV3Dto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${DateCreated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FirstExpirationReminder},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${AccountIdMinWordLength},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${AccountNameMinWordLength},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinAlpha},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinCharacterTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxLength},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinLength},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxRepeatedChars},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinLower},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinNumeric},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinSpecial},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinUpper},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PasswordExpiration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DefaultPolicy} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnablePasswdExpiration} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequireStrongAuthn} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequireStrongAuthOffNetwork} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequireStrongAuthUntrustedGeographies} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseAccountAttributes} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseDictionary} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseIdentityAttributes} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ValidateAgainstAccountId} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ValidateAgainstAccountName} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SourceIds}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => PasswordPolicyV3Dto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "description" = ${Description}
            "name" = ${Name}
            "dateCreated" = ${DateCreated}
            "lastUpdated" = ${LastUpdated}
            "firstExpirationReminder" = ${FirstExpirationReminder}
            "accountIdMinWordLength" = ${AccountIdMinWordLength}
            "accountNameMinWordLength" = ${AccountNameMinWordLength}
            "minAlpha" = ${MinAlpha}
            "minCharacterTypes" = ${MinCharacterTypes}
            "maxLength" = ${MaxLength}
            "minLength" = ${MinLength}
            "maxRepeatedChars" = ${MaxRepeatedChars}
            "minLower" = ${MinLower}
            "minNumeric" = ${MinNumeric}
            "minSpecial" = ${MinSpecial}
            "minUpper" = ${MinUpper}
            "passwordExpiration" = ${PasswordExpiration}
            "defaultPolicy" = ${DefaultPolicy}
            "enablePasswdExpiration" = ${EnablePasswdExpiration}
            "requireStrongAuthn" = ${RequireStrongAuthn}
            "requireStrongAuthOffNetwork" = ${RequireStrongAuthOffNetwork}
            "requireStrongAuthUntrustedGeographies" = ${RequireStrongAuthUntrustedGeographies}
            "useAccountAttributes" = ${UseAccountAttributes}
            "useDictionary" = ${UseDictionary}
            "useIdentityAttributes" = ${UseIdentityAttributes}
            "validateAgainstAccountId" = ${ValidateAgainstAccountId}
            "validateAgainstAccountName" = ${ValidateAgainstAccountName}
            "created" = ${Created}
            "modified" = ${Modified}
            "sourceIds" = ${SourceIds}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordPolicyV3Dto<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordPolicyV3Dto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordPolicyV3Dto<PSCustomObject>
#>
function ConvertFrom-JsonToPasswordPolicyV3Dto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => PasswordPolicyV3Dto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PasswordPolicyV3Dto
        $AllProperties = ("id", "description", "name", "dateCreated", "lastUpdated", "firstExpirationReminder", "accountIdMinWordLength", "accountNameMinWordLength", "minAlpha", "minCharacterTypes", "maxLength", "minLength", "maxRepeatedChars", "minLower", "minNumeric", "minSpecial", "minUpper", "passwordExpiration", "defaultPolicy", "enablePasswdExpiration", "requireStrongAuthn", "requireStrongAuthOffNetwork", "requireStrongAuthUntrustedGeographies", "useAccountAttributes", "useDictionary", "useIdentityAttributes", "validateAgainstAccountId", "validateAgainstAccountName", "created", "modified", "sourceIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dateCreated"))) { #optional property not found
            $DateCreated = $null
        } else {
            $DateCreated = $JsonParameters.PSobject.Properties["dateCreated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdated"))) { #optional property not found
            $LastUpdated = $null
        } else {
            $LastUpdated = $JsonParameters.PSobject.Properties["lastUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstExpirationReminder"))) { #optional property not found
            $FirstExpirationReminder = $null
        } else {
            $FirstExpirationReminder = $JsonParameters.PSobject.Properties["firstExpirationReminder"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountIdMinWordLength"))) { #optional property not found
            $AccountIdMinWordLength = $null
        } else {
            $AccountIdMinWordLength = $JsonParameters.PSobject.Properties["accountIdMinWordLength"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountNameMinWordLength"))) { #optional property not found
            $AccountNameMinWordLength = $null
        } else {
            $AccountNameMinWordLength = $JsonParameters.PSobject.Properties["accountNameMinWordLength"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minAlpha"))) { #optional property not found
            $MinAlpha = $null
        } else {
            $MinAlpha = $JsonParameters.PSobject.Properties["minAlpha"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minCharacterTypes"))) { #optional property not found
            $MinCharacterTypes = $null
        } else {
            $MinCharacterTypes = $JsonParameters.PSobject.Properties["minCharacterTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxLength"))) { #optional property not found
            $MaxLength = $null
        } else {
            $MaxLength = $JsonParameters.PSobject.Properties["maxLength"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minLength"))) { #optional property not found
            $MinLength = $null
        } else {
            $MinLength = $JsonParameters.PSobject.Properties["minLength"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxRepeatedChars"))) { #optional property not found
            $MaxRepeatedChars = $null
        } else {
            $MaxRepeatedChars = $JsonParameters.PSobject.Properties["maxRepeatedChars"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minLower"))) { #optional property not found
            $MinLower = $null
        } else {
            $MinLower = $JsonParameters.PSobject.Properties["minLower"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minNumeric"))) { #optional property not found
            $MinNumeric = $null
        } else {
            $MinNumeric = $JsonParameters.PSobject.Properties["minNumeric"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minSpecial"))) { #optional property not found
            $MinSpecial = $null
        } else {
            $MinSpecial = $JsonParameters.PSobject.Properties["minSpecial"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minUpper"))) { #optional property not found
            $MinUpper = $null
        } else {
            $MinUpper = $JsonParameters.PSobject.Properties["minUpper"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordExpiration"))) { #optional property not found
            $PasswordExpiration = $null
        } else {
            $PasswordExpiration = $JsonParameters.PSobject.Properties["passwordExpiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultPolicy"))) { #optional property not found
            $DefaultPolicy = $null
        } else {
            $DefaultPolicy = $JsonParameters.PSobject.Properties["defaultPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enablePasswdExpiration"))) { #optional property not found
            $EnablePasswdExpiration = $null
        } else {
            $EnablePasswdExpiration = $JsonParameters.PSobject.Properties["enablePasswdExpiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requireStrongAuthn"))) { #optional property not found
            $RequireStrongAuthn = $null
        } else {
            $RequireStrongAuthn = $JsonParameters.PSobject.Properties["requireStrongAuthn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requireStrongAuthOffNetwork"))) { #optional property not found
            $RequireStrongAuthOffNetwork = $null
        } else {
            $RequireStrongAuthOffNetwork = $JsonParameters.PSobject.Properties["requireStrongAuthOffNetwork"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requireStrongAuthUntrustedGeographies"))) { #optional property not found
            $RequireStrongAuthUntrustedGeographies = $null
        } else {
            $RequireStrongAuthUntrustedGeographies = $JsonParameters.PSobject.Properties["requireStrongAuthUntrustedGeographies"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useAccountAttributes"))) { #optional property not found
            $UseAccountAttributes = $null
        } else {
            $UseAccountAttributes = $JsonParameters.PSobject.Properties["useAccountAttributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useDictionary"))) { #optional property not found
            $UseDictionary = $null
        } else {
            $UseDictionary = $JsonParameters.PSobject.Properties["useDictionary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useIdentityAttributes"))) { #optional property not found
            $UseIdentityAttributes = $null
        } else {
            $UseIdentityAttributes = $JsonParameters.PSobject.Properties["useIdentityAttributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "validateAgainstAccountId"))) { #optional property not found
            $ValidateAgainstAccountId = $null
        } else {
            $ValidateAgainstAccountId = $JsonParameters.PSobject.Properties["validateAgainstAccountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "validateAgainstAccountName"))) { #optional property not found
            $ValidateAgainstAccountName = $null
        } else {
            $ValidateAgainstAccountName = $JsonParameters.PSobject.Properties["validateAgainstAccountName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceIds"))) { #optional property not found
            $SourceIds = $null
        } else {
            $SourceIds = $JsonParameters.PSobject.Properties["sourceIds"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "description" = ${Description}
            "name" = ${Name}
            "dateCreated" = ${DateCreated}
            "lastUpdated" = ${LastUpdated}
            "firstExpirationReminder" = ${FirstExpirationReminder}
            "accountIdMinWordLength" = ${AccountIdMinWordLength}
            "accountNameMinWordLength" = ${AccountNameMinWordLength}
            "minAlpha" = ${MinAlpha}
            "minCharacterTypes" = ${MinCharacterTypes}
            "maxLength" = ${MaxLength}
            "minLength" = ${MinLength}
            "maxRepeatedChars" = ${MaxRepeatedChars}
            "minLower" = ${MinLower}
            "minNumeric" = ${MinNumeric}
            "minSpecial" = ${MinSpecial}
            "minUpper" = ${MinUpper}
            "passwordExpiration" = ${PasswordExpiration}
            "defaultPolicy" = ${DefaultPolicy}
            "enablePasswdExpiration" = ${EnablePasswdExpiration}
            "requireStrongAuthn" = ${RequireStrongAuthn}
            "requireStrongAuthOffNetwork" = ${RequireStrongAuthOffNetwork}
            "requireStrongAuthUntrustedGeographies" = ${RequireStrongAuthUntrustedGeographies}
            "useAccountAttributes" = ${UseAccountAttributes}
            "useDictionary" = ${UseDictionary}
            "useIdentityAttributes" = ${UseIdentityAttributes}
            "validateAgainstAccountId" = ${ValidateAgainstAccountId}
            "validateAgainstAccountName" = ${ValidateAgainstAccountName}
            "created" = ${Created}
            "modified" = ${Modified}
            "sourceIds" = ${SourceIds}
        }

        return $PSO
    }

}

