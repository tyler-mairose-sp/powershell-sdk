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

.PARAMETER Role
Federation protocol role
.PARAMETER EntityId
An entity ID is a globally unique name for a SAML entity, either an Identity Provider (IDP) or a Service Provider (SP).
.OUTPUTS

FederationProtocolDetails<PSCustomObject>
#>

function Initialize-FederationProtocolDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SAML_IDP", "SAML_SP")]
        [String]
        ${Role},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EntityId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => FederationProtocolDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "role" = ${Role}
            "entityId" = ${EntityId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FederationProtocolDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to FederationProtocolDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FederationProtocolDetails<PSCustomObject>
#>
function ConvertFrom-JsonToFederationProtocolDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => FederationProtocolDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FederationProtocolDetails
        $AllProperties = ("role", "entityId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "role"))) { #optional property not found
            $Role = $null
        } else {
            $Role = $JsonParameters.PSobject.Properties["role"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entityId"))) { #optional property not found
            $EntityId = $null
        } else {
            $EntityId = $JsonParameters.PSobject.Properties["entityId"].value
        }

        $PSO = [PSCustomObject]@{
            "role" = ${Role}
            "entityId" = ${EntityId}
        }

        return $PSO
    }

}

