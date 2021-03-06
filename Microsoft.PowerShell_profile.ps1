Set-StrictMode -Version Latest;
$Global:DebugPreference = "SilentlyContinue";
$Global:VerbosePreference = "SilentlyContinue";
$host.ui.RawUI.WindowTitle = "PowerShell";

# Configure ServicePointManager to Prefer TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$stopwatch      = [System.Diagnostics.Stopwatch]::StartNew();
$ProfilePath    = Split-Path $PROFILE;
$ScriptPath     = Join-Path $ProfilePath bin;
$VimPath        = Join-Path $ScriptPath "\vim\vim.exe";
$GourcePath     = Join-Path $ScriptPath "\gource\gource.exe";
$DcrawPath      = Join-Path $ScriptPath "\dcraw\dcraw.exe";
$CJpegRootPath  = Join-Path $ScriptPath "cjpeg";
$cjpegPath      = Join-Path $CJpegRootPath "cjpeg\Release\cjpeg.exe";
$whoisPath      = Join-Path $ScriptPath "sysinternals\whois.exe";
$logstalgiaPath = Join-Path $ScriptPath "logstalgia\logstalgia.exe";
$terraformPath  = 'C:\choco\bin\terraform.exe'
$poshGitPath    = 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

$ProfileTimings = @{};

$codeFiles = Get-ChildItem -Path "$ProfilePath\code" -Filter "*.cs";
foreach ($code in $codeFiles) {
  $dependencies = Get-ChildItem -Path (Join-Path $code.Directory  $code.BaseName) -Filter *.dll;

  try {
    $dependencies | ForEach-Object { Add-Type -Path $_.FullName };
    Add-Type -LiteralPath $code.FullName -ReferencedAssemblies $dependencies.FullName;
  }
  catch
  {
    if ($_.Exception.GetType() -eq "ReflectionTypeLoadException")
    {
      $typeLoadException = $_.Exception;
      $loaderExceptions  = $typeLoadException.LoaderExceptions;
      $loaderExceptions | Write-Host;
    }
  }
}

Get-ChildItem "$ProfilePath\scripts" -Filter *.ps1 | ForEach-Object {
  $sw = [System.Diagnostics.Stopwatch]::StartNew();
  . $_.FullName
  $sw.Stop();
  $ProfileTimings.Add($_.Name, $sw.Elapsed);
};

$global:WindowsIdentity = [System.Security.Principal.WindowsIdentity]::GetCurrent();
$global:WindowsPrincipal = New-Object System.Security.Principal.WindowsPrincipal($WindowsIdentity);
$global:IsAdmin = $WindowsPrincipal.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator);

function global:prompt {
  $realLASTEXITCODE = $LASTEXITCODE

  if (Test-Path variable:/PSDebugContext) {
    Write-Host '[DBG] ' -ForegroundColor Blue -NoNewLine;
  } elseif ($IsAdmin) {
    Write-Host '[ADM] ' -ForegroundColor Red -NoNewLine;
  } else {
    Write-Host '[PS] ' -ForegroundColor White -NoNewLine;
  }

  Write-Host "$([Net.Dns]::GetHostName()) " -ForegroundColor Green -NoNewLine

  if ($PWD.Path -eq $HOME) {
    Write-Host '~' -NoNewLine -ForegroundColor Cyan;
  } else {
    Write-Host (Split-Path -Resolve $pwd -Leaf) -NoNewLine -ForegroundColor Cyan;
  }

  Write-VcsStatus;

  $global:LASTEXITCODE = $realLASTEXITCODE;
  return "> ";
}

# Initalise NodeJS so that is executes promptly
& node --version | Out-Null

Set-Alias vi         $VimPath;
Set-Alias vim        $VimPath;
Set-Alias dcraw      $DcrawPath;
Set-Alias cjpeg      $cjpegPath;
Set-Alias gource     $GourcePath;
Set-Alias whois      $whoisPath;
Set-Alias logstalgia $logstalgiaPath;
Set-Alias ll         Get-ChildItemColor -Option AllScope;
Set-Alias cat        Get-ContentColor -Option AllScope;

# Terraform Alias'
Function Get-TerraformPlan { & $TerraformPath plan -out .tfplan }
Function Set-TerraformPlan { & $TerraformPath apply .tfplan }

Set-Alias tf         $TerraformPath;
Set-Alias tfp        Get-TerraformPlan;
Set-Alias tfa        Set-TerraformPlan;

if (Test-Path ~\MachineModules.ps1) {
  . ~\MachineModules.ps1;
}

if (Get-Command chef -CommandType Application -ErrorAction "SilentlyContinue") {
  chef shell-init powershell | Invoke-Expression;
}

Get-Content $ProfilePath\logo.txt | Write-Host -ForegroundColor DarkYellow
Write-Host
Write-Host "Windows:     " -ForegroundColor White -NoNewLine;
Write-Host ([System.Environment]::OSVersion.Version).ToString();
Write-Host "PowerShell:  " -ForegroundColor White -NoNewLine;
Write-Host (Get-Host).Version.ToString();
& "$PSScriptRoot\currency\Update-VersionInfo.ps1"

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# PoshGit
if (Test-Path($poshGitPath)) {
  Import-Module "$poshGitPath"
}

if ((Get-Module -ListAvailable oh-my-posh | Measure-Object).Count -gt 0) {
  Import-Module oh-my-posh
  Set-Theme PowerLine-Custom
}

$stopwatch.Stop();
$timingColor = if ($stopwatch.Elapsed.Seconds -lt 5) { "Green" } elseif ($stopwatch.Elapsed.Seconds -lt 10) { "Yellow" } else { "Red" }
Write-Host "`nProfile loaded in $($stopwatch.Elapsed.Seconds) seconds and $($stopwatch.Elapsed.Milliseconds) milliseconds.`n" -ForegroundColor $timingColor;
