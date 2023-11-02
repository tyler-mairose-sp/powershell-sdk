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

The approval's reviewer's comment.

.PARAMETER Comment
Comment content.
.PARAMETER Author
No description available.
.PARAMETER Created
Date and time comment was created.
.OUTPUTS

CompletedApprovalReviewerComment<PSCustomObject>
#>

function Initialize-CompletedApprovalReviewerComment {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Author},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CompletedApprovalReviewerComment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "author" = ${Author}
            "created" = ${Created}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CompletedApprovalReviewerComment<PSCustomObject>

.DESCRIPTION

Convert from JSON to CompletedApprovalReviewerComment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CompletedApprovalReviewerComment<PSCustomObject>
#>
function ConvertFrom-JsonToCompletedApprovalReviewerComment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CompletedApprovalReviewerComment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CompletedApprovalReviewerComment
        $AllProperties = ("comment", "author", "created")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "author"))) { #optional property not found
            $Author = $null
        } else {
            $Author = $JsonParameters.PSobject.Properties["author"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "author" = ${Author}
            "created" = ${Created}
        }

        return $PSO
    }

}

