#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Identity
No description available.
.PARAMETER Source
No description available.
.PARAMETER Account
No description available.
.PARAMETER Changes
A list of attributes that changed.
.OUTPUTS

AccountAttributesChanged<PSCustomObject>
#>

function Initialize-BetaAccountAttributesChanged {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Identity},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Changes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccountAttributesChanged' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Identity) {
            throw "invalid value for 'Identity', 'Identity' cannot be null."
        }

        if (!$Source) {
            throw "invalid value for 'Source', 'Source' cannot be null."
        }

        if (!$Account) {
            throw "invalid value for 'Account', 'Account' cannot be null."
        }

        if (!$Changes) {
            throw "invalid value for 'Changes', 'Changes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "source" = ${Source}
            "account" = ${Account}
            "changes" = ${Changes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountAttributesChanged<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountAttributesChanged<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountAttributesChanged<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccountAttributesChanged {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccountAttributesChanged' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccountAttributesChanged
        $AllProperties = ("identity", "source", "account", "changes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'identity' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identity"))) {
            throw "Error! JSON cannot be serialized due to the required property 'identity' missing."
        } else {
            $Identity = $JsonParameters.PSobject.Properties["identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) {
            throw "Error! JSON cannot be serialized due to the required property 'source' missing."
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "account"))) {
            throw "Error! JSON cannot be serialized due to the required property 'account' missing."
        } else {
            $Account = $JsonParameters.PSobject.Properties["account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "changes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'changes' missing."
        } else {
            $Changes = $JsonParameters.PSobject.Properties["changes"].value
        }

        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "source" = ${Source}
            "account" = ${Account}
            "changes" = ${Changes}
        }

        return $PSO
    }

}

