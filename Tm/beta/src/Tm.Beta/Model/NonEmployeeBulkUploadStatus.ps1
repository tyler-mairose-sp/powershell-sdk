#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
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

function Initialize-BetaNonEmployeeBulkUploadStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PENDING", "IN_PROGRESS", "COMPLETED", "ERROR")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaNonEmployeeBulkUploadStatus' | Write-Debug
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
function ConvertFrom-BetaJsonToNonEmployeeBulkUploadStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaNonEmployeeBulkUploadStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaNonEmployeeBulkUploadStatus
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

