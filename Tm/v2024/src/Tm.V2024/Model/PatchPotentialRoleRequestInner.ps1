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

.PARAMETER Op
The operation to be performed
.PARAMETER Path
A string JSON Pointer representing the target path to an element to be affected by the operation
.PARAMETER Value
No description available.
.OUTPUTS

PatchPotentialRoleRequestInner<PSCustomObject>
#>

function Initialize-V2024PatchPotentialRoleRequestInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("remove", "replace")]
        [String]
        ${Op},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Path},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024PatchPotentialRoleRequestInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Path) {
            throw "invalid value for 'Path', 'Path' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "op" = ${Op}
            "path" = ${Path}
            "value" = ${Value}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PatchPotentialRoleRequestInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to PatchPotentialRoleRequestInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PatchPotentialRoleRequestInner<PSCustomObject>
#>
function ConvertFrom-V2024JsonToPatchPotentialRoleRequestInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024PatchPotentialRoleRequestInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024PatchPotentialRoleRequestInner
        $AllProperties = ("op", "path", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'path' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "path"))) {
            throw "Error! JSON cannot be serialized due to the required property 'path' missing."
        } else {
            $Path = $JsonParameters.PSobject.Properties["path"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "op"))) { #optional property not found
            $Op = $null
        } else {
            $Op = $JsonParameters.PSobject.Properties["op"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "op" = ${Op}
            "path" = ${Path}
            "value" = ${Value}
        }

        return $PSO
    }

}

