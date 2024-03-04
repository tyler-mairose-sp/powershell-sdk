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

.PARAMETER Token
Token value
.PARAMETER UserAlias
User alias from table spt_identity field named 'name'
.PARAMETER DeliveryType
Token delivery type
.OUTPUTS

TokenAuthRequest<PSCustomObject>
#>

function Initialize-BetaTokenAuthRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Token},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserAlias},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SMS_PERSONAL", "VOICE_PERSONAL", "SMS_WORK", "VOICE_WORK", "EMAIL_WORK", "EMAIL_PERSONAL")]
        [String]
        ${DeliveryType}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaTokenAuthRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Token) {
            throw "invalid value for 'Token', 'Token' cannot be null."
        }

        if (!$UserAlias) {
            throw "invalid value for 'UserAlias', 'UserAlias' cannot be null."
        }

        if (!$DeliveryType) {
            throw "invalid value for 'DeliveryType', 'DeliveryType' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "token" = ${Token}
            "userAlias" = ${UserAlias}
            "deliveryType" = ${DeliveryType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TokenAuthRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to TokenAuthRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TokenAuthRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTokenAuthRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaTokenAuthRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTokenAuthRequest
        $AllProperties = ("token", "userAlias", "deliveryType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'token' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "token"))) {
            throw "Error! JSON cannot be serialized due to the required property 'token' missing."
        } else {
            $Token = $JsonParameters.PSobject.Properties["token"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userAlias"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userAlias' missing."
        } else {
            $UserAlias = $JsonParameters.PSobject.Properties["userAlias"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deliveryType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deliveryType' missing."
        } else {
            $DeliveryType = $JsonParameters.PSobject.Properties["deliveryType"].value
        }

        $PSO = [PSCustomObject]@{
            "token" = ${Token}
            "userAlias" = ${UserAlias}
            "deliveryType" = ${DeliveryType}
        }

        return $PSO
    }

}

