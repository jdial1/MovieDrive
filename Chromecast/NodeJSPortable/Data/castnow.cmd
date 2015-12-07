cd ..\..
@IF EXIST "NodeJSPortable.exe" (
  "NodeJSPortable.exe"  "\Data\node_modules\castnow\index.js" %*
) ELSE (
  @SETLOCAL
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\node_modules\castnow\index.js" %*
)