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
Type of the job, either Backup or Draft.
.PARAMETER Tenant
The name of the tenant performing the upload
.PARAMETER RequesterName
The name of the requester.
.PARAMETER Created
The time the job was started.
.PARAMETER Modified
The time of the last update to the job.
.PARAMETER Name
The name assigned to the upload file in the request body.
.PARAMETER UserCanDelete
Is the job a regular backup job, if so is the user allowed to delete the backup file. Since this is an upload job it remains as false.
.PARAMETER IsPartial
Is the job a regular backup job, if so is it partial. Since this is an upload job it remains as false.
.PARAMETER BackupType
What kind of backup is this being treated as.
.PARAMETER HydrationStatus
have the objects contained in the upload file been hydrated.
.OUTPUTS

UploadsRequest<PSCustomObject>
#>

function Initialize-V2024UploadsRequest {
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
        [ValidateSet("BACKUP", "DRAFT")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Tenant},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequesterName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UserCanDelete} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsPartial} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("UPLOADED", "AUTOMATED", "MANUAL")]
        [String]
        ${BackupType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("HYDRATED", "NOT_HYDRATED")]
        [String]
        ${HydrationStatus}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024UploadsRequest' | Write-Debug
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
            "tenant" = ${Tenant}
            "requesterName" = ${RequesterName}
            "created" = ${Created}
            "modified" = ${Modified}
            "name" = ${Name}
            "userCanDelete" = ${UserCanDelete}
            "isPartial" = ${IsPartial}
            "backupType" = ${BackupType}
            "hydrationStatus" = ${HydrationStatus}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UploadsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to UploadsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UploadsRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToUploadsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024UploadsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024UploadsRequest
        $AllProperties = ("jobId", "status", "type", "tenant", "requesterName", "created", "modified", "name", "userCanDelete", "isPartial", "backupType", "hydrationStatus")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tenant"))) { #optional property not found
            $Tenant = $null
        } else {
            $Tenant = $JsonParameters.PSobject.Properties["tenant"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterName"))) { #optional property not found
            $RequesterName = $null
        } else {
            $RequesterName = $JsonParameters.PSobject.Properties["requesterName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userCanDelete"))) { #optional property not found
            $UserCanDelete = $null
        } else {
            $UserCanDelete = $JsonParameters.PSobject.Properties["userCanDelete"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isPartial"))) { #optional property not found
            $IsPartial = $null
        } else {
            $IsPartial = $JsonParameters.PSobject.Properties["isPartial"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "backupType"))) { #optional property not found
            $BackupType = $null
        } else {
            $BackupType = $JsonParameters.PSobject.Properties["backupType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hydrationStatus"))) { #optional property not found
            $HydrationStatus = $null
        } else {
            $HydrationStatus = $JsonParameters.PSobject.Properties["hydrationStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "jobId" = ${JobId}
            "status" = ${Status}
            "type" = ${Type}
            "tenant" = ${Tenant}
            "requesterName" = ${RequesterName}
            "created" = ${Created}
            "modified" = ${Modified}
            "name" = ${Name}
            "userCanDelete" = ${UserCanDelete}
            "isPartial" = ${IsPartial}
            "backupType" = ${BackupType}
            "hydrationStatus" = ${HydrationStatus}
        }

        return $PSO
    }

}

