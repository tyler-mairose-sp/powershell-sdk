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

.PARAMETER AccountName
Requested identity account name.
.PARAMETER FirstName
Non-Employee's first name.
.PARAMETER LastName
Non-Employee's last name.
.PARAMETER Email
Non-Employee's email.
.PARAMETER Phone
Non-Employee's phone.
.PARAMETER Manager
The account ID of a valid identity to serve as this non-employee's manager.
.PARAMETER SourceId
Non-Employee's source id.
.PARAMETER VarData
Attribute blob/bag for a non-employee, 10 attributes is the maximum size supported.
.PARAMETER StartDate
Non-Employee employment start date.
.PARAMETER EndDate
Non-Employee employment end date.
.OUTPUTS

NonEmployeeRequestBody<PSCustomObject>
#>

function Initialize-NonEmployeeRequestBody {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Manager},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarData},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${StartDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${EndDate}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => NonEmployeeRequestBody' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccountName) {
            throw "invalid value for 'AccountName', 'AccountName' cannot be null."
        }

        if (!$FirstName) {
            throw "invalid value for 'FirstName', 'FirstName' cannot be null."
        }

        if (!$LastName) {
            throw "invalid value for 'LastName', 'LastName' cannot be null."
        }

        if (!$Email) {
            throw "invalid value for 'Email', 'Email' cannot be null."
        }

        if (!$Phone) {
            throw "invalid value for 'Phone', 'Phone' cannot be null."
        }

        if (!$Manager) {
            throw "invalid value for 'Manager', 'Manager' cannot be null."
        }

        if (!$SourceId) {
            throw "invalid value for 'SourceId', 'SourceId' cannot be null."
        }

        if (!$StartDate) {
            throw "invalid value for 'StartDate', 'StartDate' cannot be null."
        }

        if (!$EndDate) {
            throw "invalid value for 'EndDate', 'EndDate' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "accountName" = ${AccountName}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "phone" = ${Phone}
            "manager" = ${Manager}
            "sourceId" = ${SourceId}
            "data" = ${VarData}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeRequestBody<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeRequestBody<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeRequestBody<PSCustomObject>
#>
function ConvertFrom-JsonToNonEmployeeRequestBody {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => NonEmployeeRequestBody' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in NonEmployeeRequestBody
        $AllProperties = ("accountName", "firstName", "lastName", "email", "phone", "manager", "sourceId", "data", "startDate", "endDate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'accountName' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accountName' missing."
        } else {
            $AccountName = $JsonParameters.PSobject.Properties["accountName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'firstName' missing."
        } else {
            $FirstName = $JsonParameters.PSobject.Properties["firstName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'lastName' missing."
        } else {
            $LastName = $JsonParameters.PSobject.Properties["lastName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) {
            throw "Error! JSON cannot be serialized due to the required property 'email' missing."
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phone"))) {
            throw "Error! JSON cannot be serialized due to the required property 'phone' missing."
        } else {
            $Phone = $JsonParameters.PSobject.Properties["phone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manager"))) {
            throw "Error! JSON cannot be serialized due to the required property 'manager' missing."
        } else {
            $Manager = $JsonParameters.PSobject.Properties["manager"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceId' missing."
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startDate"))) {
            throw "Error! JSON cannot be serialized due to the required property 'startDate' missing."
        } else {
            $StartDate = $JsonParameters.PSobject.Properties["startDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endDate"))) {
            throw "Error! JSON cannot be serialized due to the required property 'endDate' missing."
        } else {
            $EndDate = $JsonParameters.PSobject.Properties["endDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "data"))) { #optional property not found
            $VarData = $null
        } else {
            $VarData = $JsonParameters.PSobject.Properties["data"].value
        }

        $PSO = [PSCustomObject]@{
            "accountName" = ${AccountName}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "phone" = ${Phone}
            "manager" = ${Manager}
            "sourceId" = ${SourceId}
            "data" = ${VarData}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
        }

        return $PSO
    }

}

