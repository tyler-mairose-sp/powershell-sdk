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

.PARAMETER Created
Created is the date the form instance was assigned
.PARAMETER CreatedBy
No description available.
.PARAMETER Expire
Expire is the maximum amount of time that a form can be in progress. After this time is reached then the form will be moved to a CANCELED state automatically. The user will no longer be able to complete the submission. When a form instance is expires an audit log will be generated for that record
.PARAMETER FormConditions
FormConditions is the conditional logic that modify the form dynamically modify the form as the recipient is interacting out the form
.PARAMETER FormData
FormData is the data provided by the form on submit. The data is in a key -> value map
.PARAMETER FormDefinitionId
FormDefinitionID is the id of the form definition that created this form
.PARAMETER FormElements
FormElements is the configuration of the form, this would be a repeat of the fields from the form-config
.PARAMETER FormErrors
FormErrors is an array of form validation errors from the last time the form instance was transitioned to the SUBMITTED state. If the form instance had validation errors then it would be moved to the IN PROGRESS state where the client can retrieve these errors
.PARAMETER FormInput
FormInput is an object of form input labels to value
.PARAMETER Id
Unique guid identifying this form instance
.PARAMETER Modified
Modified is the last date the form instance was modified
.PARAMETER Recipients
Recipients references to the recipient of a form. The recipients are those who are responsible for filling out a form and completing it
.PARAMETER StandAloneForm
StandAloneForm is a boolean flag to indicate if this form should be available for users to complete via the standalone form UI or should this only be available to be completed by as an embedded form
.PARAMETER StandAloneFormUrl
StandAloneFormURL is the URL where this form may be completed by the designated recipients using the standalone form UI
.PARAMETER State
State the state of the form instance ASSIGNED FormInstanceStateAssigned IN_PROGRESS FormInstanceStateInProgress SUBMITTED FormInstanceStateSubmitted COMPLETED FormInstanceStateCompleted CANCELLED FormInstanceStateCancelled
.OUTPUTS

FormInstanceResponse<PSCustomObject>
#>

function Initialize-V2024FormInstanceResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CreatedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expire},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormConditions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${FormData},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FormDefinitionId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormElements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormErrors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${FormInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Recipients},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${StandAloneForm} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StandAloneFormUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ASSIGNED", "IN_PROGRESS", "SUBMITTED", "COMPLETED", "CANCELLED")]
        [String]
        ${State}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024FormInstanceResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "createdBy" = ${CreatedBy}
            "expire" = ${Expire}
            "formConditions" = ${FormConditions}
            "formData" = ${FormData}
            "formDefinitionId" = ${FormDefinitionId}
            "formElements" = ${FormElements}
            "formErrors" = ${FormErrors}
            "formInput" = ${FormInput}
            "id" = ${Id}
            "modified" = ${Modified}
            "recipients" = ${Recipients}
            "standAloneForm" = ${StandAloneForm}
            "standAloneFormUrl" = ${StandAloneFormUrl}
            "state" = ${State}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormInstanceResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormInstanceResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormInstanceResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFormInstanceResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024FormInstanceResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FormInstanceResponse
        $AllProperties = ("created", "createdBy", "expire", "formConditions", "formData", "formDefinitionId", "formElements", "formErrors", "formInput", "id", "modified", "recipients", "standAloneForm", "standAloneFormUrl", "state")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdBy"))) { #optional property not found
            $CreatedBy = $null
        } else {
            $CreatedBy = $JsonParameters.PSobject.Properties["createdBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expire"))) { #optional property not found
            $Expire = $null
        } else {
            $Expire = $JsonParameters.PSobject.Properties["expire"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formConditions"))) { #optional property not found
            $FormConditions = $null
        } else {
            $FormConditions = $JsonParameters.PSobject.Properties["formConditions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formData"))) { #optional property not found
            $FormData = $null
        } else {
            $FormData = $JsonParameters.PSobject.Properties["formData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formDefinitionId"))) { #optional property not found
            $FormDefinitionId = $null
        } else {
            $FormDefinitionId = $JsonParameters.PSobject.Properties["formDefinitionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formElements"))) { #optional property not found
            $FormElements = $null
        } else {
            $FormElements = $JsonParameters.PSobject.Properties["formElements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formErrors"))) { #optional property not found
            $FormErrors = $null
        } else {
            $FormErrors = $JsonParameters.PSobject.Properties["formErrors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formInput"))) { #optional property not found
            $FormInput = $null
        } else {
            $FormInput = $JsonParameters.PSobject.Properties["formInput"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipients"))) { #optional property not found
            $Recipients = $null
        } else {
            $Recipients = $JsonParameters.PSobject.Properties["recipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "standAloneForm"))) { #optional property not found
            $StandAloneForm = $null
        } else {
            $StandAloneForm = $JsonParameters.PSobject.Properties["standAloneForm"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "standAloneFormUrl"))) { #optional property not found
            $StandAloneFormUrl = $null
        } else {
            $StandAloneFormUrl = $JsonParameters.PSobject.Properties["standAloneFormUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "createdBy" = ${CreatedBy}
            "expire" = ${Expire}
            "formConditions" = ${FormConditions}
            "formData" = ${FormData}
            "formDefinitionId" = ${FormDefinitionId}
            "formElements" = ${FormElements}
            "formErrors" = ${FormErrors}
            "formInput" = ${FormInput}
            "id" = ${Id}
            "modified" = ${Modified}
            "recipients" = ${Recipients}
            "standAloneForm" = ${StandAloneForm}
            "standAloneFormUrl" = ${StandAloneFormUrl}
            "state" = ${State}
        }

        return $PSO
    }

}

