#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Message
The detailed message for an update. Typically the relevent error message when status is error.
.PARAMETER ScriptName
The connector script name
.PARAMETER UpdatedFiles
The list of updated files supported by the connector
.PARAMETER Status
The connector update status
.OUTPUTS

UpdateDetail<PSCustomObject>
#>

function Initialize-UpdateDetail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScriptName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${UpdatedFiles},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ERROR", "UPDATED", "UNCHANGED", "SKIPPED")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => UpdateDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "scriptName" = ${ScriptName}
            "updatedFiles" = ${UpdatedFiles}
            "status" = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateDetail<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateDetail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateDetail<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateDetail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => UpdateDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UpdateDetail
        $AllProperties = ("message", "scriptName", "updatedFiles", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scriptName"))) { #optional property not found
            $ScriptName = $null
        } else {
            $ScriptName = $JsonParameters.PSobject.Properties["scriptName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedFiles"))) { #optional property not found
            $UpdatedFiles = $null
        } else {
            $UpdatedFiles = $JsonParameters.PSobject.Properties["updatedFiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "scriptName" = ${ScriptName}
            "updatedFiles" = ${UpdatedFiles}
            "status" = ${Status}
        }

        return $PSO
    }

}

