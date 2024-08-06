#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Identity
No description available.
.PARAMETER Changes
A list of one or more identity attributes that changed on the identity.
.OUTPUTS

IdentityAttributesChanged<PSCustomObject>
#>

function Initialize-V2024IdentityAttributesChanged {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Identity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Changes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024IdentityAttributesChanged' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Identity) {
            throw "invalid value for 'Identity', 'Identity' cannot be null."
        }

        if (!$Changes) {
            throw "invalid value for 'Changes', 'Changes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "changes" = ${Changes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityAttributesChanged<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityAttributesChanged<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityAttributesChanged<PSCustomObject>
#>
function ConvertFrom-V2024JsonToIdentityAttributesChanged {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024IdentityAttributesChanged' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024IdentityAttributesChanged
        $AllProperties = ("identity", "changes")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "changes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'changes' missing."
        } else {
            $Changes = $JsonParameters.PSobject.Properties["changes"].value
        }

        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "changes" = ${Changes}
        }

        return $PSO
    }

}

