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

.PARAMETER File
connector source template xml file
.OUTPUTS

PutSourceTemplateRequest<PSCustomObject>
#>

function Initialize-V2024PutSourceTemplateRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${File}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024PutSourceTemplateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$File) {
            throw "invalid value for 'File', 'File' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "file" = ${File}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PutSourceTemplateRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PutSourceTemplateRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PutSourceTemplateRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToPutSourceTemplateRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024PutSourceTemplateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024PutSourceTemplateRequest
        $AllProperties = ("file")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'file' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "file"))) {
            throw "Error! JSON cannot be serialized due to the required property 'file' missing."
        } else {
            $File = $JsonParameters.PSobject.Properties["file"].value
        }

        $PSO = [PSCustomObject]@{
            "file" = ${File}
        }

        return $PSO
    }

}

