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

.PARAMETER JobId
Unique id assigned to this job.
.PARAMETER Status
Status of the job.
.PARAMETER Type
Type of the job, either export or import.
.PARAMETER Expiration
The time until which the artifacts will be available for download.
.PARAMETER Created
The time the job was started.
.PARAMETER Modified
The time of the last update to the job.
.OUTPUTS

SpConfigJob<PSCustomObject>
#>

function Initialize-V2024SpConfigJob {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${JobId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("NOT_STARTED", "IN_PROGRESS", "COMPLETE", "CANCELLED", "FAILED")]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EXPORT", "IMPORT")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Expiration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024SpConfigJob' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$JobId) {
            throw "invalid value for 'JobId', 'JobId' cannot be null."
        }

        if (!$Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Expiration) {
            throw "invalid value for 'Expiration', 'Expiration' cannot be null."
        }

        if (!$Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if (!$Modified) {
            throw "invalid value for 'Modified', 'Modified' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "jobId" = ${JobId}
            "status" = ${Status}
            "type" = ${Type}
            "expiration" = ${Expiration}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SpConfigJob<PSCustomObject>

.DESCRIPTION

Convert from JSON to SpConfigJob<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SpConfigJob<PSCustomObject>
#>
function ConvertFrom-V2024JsonToSpConfigJob {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024SpConfigJob' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024SpConfigJob
        $AllProperties = ("jobId", "status", "type", "expiration", "created", "modified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'jobId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jobId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'jobId' missing."
        } else {
            $JobId = $JsonParameters.PSobject.Properties["jobId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiration"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expiration' missing."
        } else {
            $Expiration = $JsonParameters.PSobject.Properties["expiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) {
            throw "Error! JSON cannot be serialized due to the required property 'modified' missing."
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        $PSO = [PSCustomObject]@{
            "jobId" = ${JobId}
            "status" = ${Status}
            "type" = ${Type}
            "expiration" = ${Expiration}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }

}

