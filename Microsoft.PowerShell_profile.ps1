$ProfilePath = Split-Path $profile
$ScriptPath  = Join-Path $ProfilePath bin
$VimPath     = Join-Path $ScriptPath "\vim\vim.exe"
$SublimePath = "C:\Program Files\Sublime Text 2\sublime_text.exe"

Set-Alias vi   $VimPath
Set-Alias vim  $VimPath

# for AutoLoading script modules
Get-Module -ListAvailable | ? { $_.ModuleType -eq "Script" } | Import-Module

# for editing your PowerShell profile
Function Edit-Profile
{
    vim $profile
}

# for editing your Vim settings
Function Edit-Vimrc
{
    vim $home\_vimrc
}

Function Configure-GitCore
{
    $gitIgnorePath = Join-Path $ProfilePath .gitignore
    git config --global user.name "Richard Slater"
    git config --global core.editor vim
    git config --global color.ui true
    git config --global core.autocrlf true
    git config --global core.excludesfile $gitIgnorePath
}

# for configuring git at Amido with suitable settings
Function Configure-GitAmido
{
    git config --global user.email richard.slater@amido.co.uk
    Configure-GitCore
}

# for configuring git with suitable settings
Function Configure-Git
{
    git config --global user.email git@richard-slater.co.uk
    Configure-GitCore
}

Function Goto-Source
{
    if (Test-Path C:\Source)
    {
        cd C:\Source
    }
}

# for finding files, UNIX like
Function which($name)
{
    Get-Command $name | Select-Object Definition
}

# for creating empty files, UNIX like
Function touch($file)
{
    "" | Out-File $file -Encoding ASCII
}

Function Init-VSEnvironment()
{
  #Set environment variables for Visual Studio Command Prompt
  pushd 'C:\Program Files (x86)\Microsoft Visual Studio 10.0\vc'
  cmd /c �vcvarsall.bat&set� |
  foreach {
    if ($_ -match �=�) {
      $v = $_.split(�=�); set-item -force -path "ENV:\$($v[0])"  -value "$($v[1])"
    }
  }
  popd
  Write-Host "`nVisual Studio 2009 Command Prompt variables set." -ForegroundColor Yellow
}
