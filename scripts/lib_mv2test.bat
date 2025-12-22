echo off

echo 清理测试工程中旧的库
:: Remove old headers
rd /s /q "..\..\libABC_tests\Library\inc"
:: Remove old lib
del /f /q "..\..\libABC_tests\Library\libABC.lib"

echo 移动库文件……（libABC.lib）
copy /y "build\libABC.lib" "..\..\libABC_tests\Library\"

echo 移动头文件（Headers）
xcopy /q "..\Library\inc" "..\..\libABC_tests\Library\inc\" /e /i /h /y

echo Finish