<#
Copyright 2016 ASOS.com Limited

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
#>

<#
.NAME
    OctopusStepTemplateCi.psm1
    
.SYNOPSIS
    OctopusStepTemplateCi Module Script
#>

Set-StrictMode -Version Latest

<# Interface Functions exported in the PSD1 file #>
. "$(Join-Path $PSScriptRoot '\Cmdlets\Interface\Export-StepTemplate.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Interface\Invoke-OctopusScriptTestSuite.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Interface\Invoke-TeamCityCiUpload.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Interface\New-ScriptModule.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Interface\New-ScriptValidationTest.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Interface\New-StepTemplate.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Interface\Sync-ScriptModule.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Interface\Sync-StepTemplate.ps1')"

<# Internal functions only used within this module #>
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\ScriptModules\New-ScriptModuleObject.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\ScriptModules\New-ScriptModuleVariableSetObject.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\StepTemplates\Compare-Hashtable.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\StepTemplates\Compare-StepTemplate.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\StepTemplates\Convert-PSObjectToHashTable.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\StepTemplates\New-StepTemplateObject.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\Convert-ToOctopusJson.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\Get-Cache.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\Invoke-OctopusOperation.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\Reset-Cache.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Octopus\Test-OctopusConnectivity.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\PowerShellManipulation\Get-ScriptBody.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\PowerShellManipulation\Get-VariableFromScriptFile.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\PowerShellManipulation\Get-VariableStatement.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\PowerShellManipulation\ParseJson.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\TeamCity\Reset-BuildOutputDirectory.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\TeamCity\Write-TeamCityMessage.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Tests\Get-ScriptValidationTestsPath.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Tests\Invoke-PesterForTeamCity.ps1')"
. "$(Join-Path $PSScriptRoot '\Cmdlets\Internal\Tests\Update-XPathValue.ps1')"