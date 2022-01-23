pushd %~dp0
curl -L -o ahk-install.exe https://www.autohotkey.com/download/ahk-install.exe
curl -L -o Interception.zip https://github.com/oblitum/Interception/releases/download/v1.0.1/Interception.zip
curl -L -o intercept.zip https://octopup.org/img/code/interception/intercept.zip
tar -xf Interception.zip
tar -xf intercept.zip
vcredist_x64.exe /q
vcredist_x86.exe /q
ahk-install /S
cd "%cd%\Interception\command line installer"
install-interception.exe /install
pause
