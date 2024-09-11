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

.PARAMETER Key
No description available.
.PARAMETER Title
No description available.
.PARAMETER Text
No description available.
.PARAMETER MessageJSON
No description available.
.PARAMETER IsSubscription
No description available.
.PARAMETER ApprovalId
No description available.
.PARAMETER RequestId
No description available.
.PARAMETER RequestedById
No description available.
.PARAMETER NotificationType
No description available.
.PARAMETER AutoApprovalData
No description available.
.PARAMETER CustomFields
No description available.
.OUTPUTS

TemplateTeams<PSCustomObject>
#>

function Initialize-V2024TemplateTeams {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageJSON},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsSubscription},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApprovalId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestedById},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NotificationType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AutoApprovalData},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CustomFields}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024TemplateTeams' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "title" = ${Title}
            "text" = ${Text}
            "messageJSON" = ${MessageJSON}
            "isSubscription" = ${IsSubscription}
            "approvalId" = ${ApprovalId}
            "requestId" = ${RequestId}
            "requestedById" = ${RequestedById}
            "notificationType" = ${NotificationType}
            "autoApprovalData" = ${AutoApprovalData}
            "customFields" = ${CustomFields}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TemplateTeams<PSCustomObject>

.DESCRIPTION

Convert from JSON to TemplateTeams<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TemplateTeams<PSCustomObject>
#>
function ConvertFrom-V2024JsonToTemplateTeams {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024TemplateTeams' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024TemplateTeams
        $AllProperties = ("key", "title", "text", "messageJSON", "isSubscription", "approvalId", "requestId", "requestedById", "notificationType", "autoApprovalData", "customFields")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messageJSON"))) { #optional property not found
            $MessageJSON = $null
        } else {
            $MessageJSON = $JsonParameters.PSobject.Properties["messageJSON"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isSubscription"))) { #optional property not found
            $IsSubscription = $null
        } else {
            $IsSubscription = $JsonParameters.PSobject.Properties["isSubscription"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalId"))) { #optional property not found
            $ApprovalId = $null
        } else {
            $ApprovalId = $JsonParameters.PSobject.Properties["approvalId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestId"))) { #optional property not found
            $RequestId = $null
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["requestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedById"))) { #optional property not found
            $RequestedById = $null
        } else {
            $RequestedById = $JsonParameters.PSobject.Properties["requestedById"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notificationType"))) { #optional property not found
            $NotificationType = $null
        } else {
            $NotificationType = $JsonParameters.PSobject.Properties["notificationType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "autoApprovalData"))) { #optional property not found
            $AutoApprovalData = $null
        } else {
            $AutoApprovalData = $JsonParameters.PSobject.Properties["autoApprovalData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customFields"))) { #optional property not found
            $CustomFields = $null
        } else {
            $CustomFields = $JsonParameters.PSobject.Properties["customFields"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "title" = ${Title}
            "text" = ${Text}
            "messageJSON" = ${MessageJSON}
            "isSubscription" = ${IsSubscription}
            "approvalId" = ${ApprovalId}
            "requestId" = ${RequestId}
            "requestedById" = ${RequestedById}
            "notificationType" = ${NotificationType}
            "autoApprovalData" = ${AutoApprovalData}
            "customFields" = ${CustomFields}
        }

        return $PSO
    }

}

