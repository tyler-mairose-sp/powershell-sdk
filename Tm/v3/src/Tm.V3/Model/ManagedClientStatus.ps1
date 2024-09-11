#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Managed Client Status

.PARAMETER Body
ManagedClientStatus body information
.PARAMETER Status
No description available.
.PARAMETER Type
No description available.
.PARAMETER Timestamp
timestamp on the Client Status update
.OUTPUTS

ManagedClientStatus<PSCustomObject>
#>

function Initialize-ManagedClientStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Body},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("NORMAL", "UNDEFINED", "NOT_CONFIGURED", "CONFIGURING", "WARNING", "ERROR", "FAILED")]
        [PSCustomObject]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CCG", "VA", "INTERNAL", "IIQ_HARVESTER", "")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Timestamp}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => ManagedClientStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Body) {
            throw "invalid value for 'Body', 'Body' cannot be null."
        }

        if (!$Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if (!$Timestamp) {
            throw "invalid value for 'Timestamp', 'Timestamp' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "status" = ${Status}
            "type" = ${Type}
            "timestamp" = ${Timestamp}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ManagedClientStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to ManagedClientStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ManagedClientStatus<PSCustomObject>
#>
function ConvertFrom-JsonToManagedClientStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => ManagedClientStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ManagedClientStatus
        $AllProperties = ("body", "status", "type", "timestamp")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'body' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) {
            throw "Error! JSON cannot be serialized due to the required property 'body' missing."
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) {
            throw "Error! JSON cannot be serialized due to the required property 'timestamp' missing."
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "status" = ${Status}
            "type" = ${Type}
            "timestamp" = ${Timestamp}
        }

        return $PSO
    }

}

