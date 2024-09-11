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

Identity profile exported object.

.PARAMETER Version
Version or object from the target service.
.PARAMETER Self
No description available.
.PARAMETER Object
No description available.
.OUTPUTS

IdentityProfileExportedObject<PSCustomObject>
#>

function Initialize-V2024IdentityProfileExportedObject {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Version},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Self},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Object}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024IdentityProfileExportedObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "self" = ${Self}
            "object" = ${Object}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityProfileExportedObject<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityProfileExportedObject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityProfileExportedObject<PSCustomObject>
#>
function ConvertFrom-V2024JsonToIdentityProfileExportedObject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024IdentityProfileExportedObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024IdentityProfileExportedObject
        $AllProperties = ("version", "self", "object")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "object"))) { #optional property not found
            $Object = $null
        } else {
            $Object = $JsonParameters.PSobject.Properties["object"].value
        }

        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "self" = ${Self}
            "object" = ${Object}
        }

        return $PSO
    }

}

