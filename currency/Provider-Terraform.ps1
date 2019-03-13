@{
  Name = "Terraform";
  ActiveVersion = {
    $localDirectory = 'C:\Tools\hashicorp\'
    $activeVersion = Join-Path $localDirectory "terraform.exe"
    $unparsedVersion = $(& $activeVersion --version) | Where-Object { -Not [String]::IsNullOrWhiteSpace($_) } | Select-Object -First 1
    $isInstalled = $unparsedVersion -match '\d+\.\d+\.\d+'
    if ($isInstalled) {
      return $matches[0]
    } else {
      return "N/A"
    }
  };
  LatestVersion = {
    $updateCheck = Invoke-RestMethod -Uri "https://checkpoint-api.hashicorp.com/v1/check/terraform"
    return $updateCheck.current_version
  }
}
