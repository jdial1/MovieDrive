cd ..\..
@IF EXIST "NodeJSPortable.exe" (
  "NodeJSPortable.exe"  "\Data\node_modules\castnow\index.js" %*
)