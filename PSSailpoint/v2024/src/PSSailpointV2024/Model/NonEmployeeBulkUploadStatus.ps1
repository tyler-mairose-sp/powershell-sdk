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

.PARAMETER Status
Returns the following values indicating the progress or result of the bulk upload job. ""PENDING"" means the job is queued and waiting to be processed. ""IN_PROGRESS"" means the job is currently being processed. ""COMPLETED"" means the job has been completed without any errors. ""ERROR"" means the job failed to process with errors. null means job has been submitted to the source. 
.OUTPUTS

NonEmployeeBulkUploadStatus<PSCustomObject>
#>

function Initialize-V2024NonEmployeeBulkUploadStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PENDING", "IN_PROGRESS", "COMPLETED", "ERROR")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024NonEmployeeBulkUploadStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeBulkUploadStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeBulkUploadStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeBulkUploadStatus<PSCustomObject>
#>
function ConvertFrom-V2024JsonToNonEmployeeBulkUploadStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024NonEmployeeBulkUploadStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024NonEmployeeBulkUploadStatus
        $AllProperties = ("status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "status" = ${Status}
        }

        return $PSO
    }

}

