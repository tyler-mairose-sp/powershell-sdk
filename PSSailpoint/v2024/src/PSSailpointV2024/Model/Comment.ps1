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

.PARAMETER CommenterId
Id of the identity making the comment
.PARAMETER CommenterName
Human-readable display name of the identity making the comment
.PARAMETER Body
Content of the comment
.PARAMETER Date
Date and time comment was made
.OUTPUTS

Comment<PSCustomObject>
#>

function Initialize-V2024Comment {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CommenterId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CommenterName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Date}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024Comment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "commenterId" = ${CommenterId}
            "commenterName" = ${CommenterName}
            "body" = ${Body}
            "date" = ${Date}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Comment<PSCustomObject>

.DESCRIPTION

Convert from JSON to Comment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Comment<PSCustomObject>
#>
function ConvertFrom-V2024JsonToComment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024Comment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Comment
        $AllProperties = ("commenterId", "commenterName", "body", "date")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commenterId"))) { #optional property not found
            $CommenterId = $null
        } else {
            $CommenterId = $JsonParameters.PSobject.Properties["commenterId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commenterName"))) { #optional property not found
            $CommenterName = $null
        } else {
            $CommenterName = $JsonParameters.PSobject.Properties["commenterName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "date"))) { #optional property not found
            $Date = $null
        } else {
            $Date = $JsonParameters.PSobject.Properties["date"].value
        }

        $PSO = [PSCustomObject]@{
            "commenterId" = ${CommenterId}
            "commenterName" = ${CommenterName}
            "body" = ${Body}
            "date" = ${Date}
        }

        return $PSO
    }

}

