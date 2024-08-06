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
No description available.
.OUTPUTS

ImportNonEmployeeRecordsInBulkRequest<PSCustomObject>
#>

function Initialize-V2024ImportNonEmployeeRecordsInBulkRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${VarData}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ImportNonEmployeeRecordsInBulkRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$VarData) {
            throw "invalid value for 'VarData', 'VarData' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "data" = ${VarData}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImportNonEmployeeRecordsInBulkRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImportNonEmployeeRecordsInBulkRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImportNonEmployeeRecordsInBulkRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToImportNonEmployeeRecordsInBulkRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ImportNonEmployeeRecordsInBulkRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ImportNonEmployeeRecordsInBulkRequest
        $AllProperties = ("data")
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

        $PSO = [PSCustomObject]@{
            "data" = ${VarData}
        }

        return $PSO
    }

}

