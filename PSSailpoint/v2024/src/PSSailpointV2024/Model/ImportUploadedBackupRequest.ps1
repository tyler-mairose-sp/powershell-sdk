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

.PARAMETER VarData
JSON file containing the objects to be imported.
.PARAMETER Name
Name that will be assigned to the uploaded file.
.OUTPUTS

ImportUploadedBackupRequest<PSCustomObject>
#>

function Initialize-V2024ImportUploadedBackupRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${VarData},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ImportUploadedBackupRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$VarData) {
            throw "invalid value for 'VarData', 'VarData' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "data" = ${VarData}
            "name" = ${Name}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImportUploadedBackupRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImportUploadedBackupRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImportUploadedBackupRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToImportUploadedBackupRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ImportUploadedBackupRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ImportUploadedBackupRequest
        $AllProperties = ("data", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'data' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "data"))) {
            throw "Error! JSON cannot be serialized due to the required property 'data' missing."
        } else {
            $VarData = $JsonParameters.PSobject.Properties["data"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "data" = ${VarData}
            "name" = ${Name}
        }

        return $PSO
    }

}

