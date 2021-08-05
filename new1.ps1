param ($input1, $input2)
Write-Host "$input1 $input2"
- task: PowerShell@2
  inputs:
    targetType: 'filePath'
    filePath: $(System.DefaultWorkingDirectory)\new1.ps1
    arguments: > # Use this to avoid newline characters in multiline string
      -input1 "Hello"
      -input2 "World"
  displayName: 'Print Hello World'