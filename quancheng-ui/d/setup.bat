
bat_content = '''@echo off
chcp 65001 >nul
title 全成UI快速安装工具包by大哥
:menu
cls
echo ==========================================
echo  欢迎使用全成UI快速安装工具包
echo 特别提醒：该工具仅为娱乐，请勿当真。
echo ==========================================
echo.
echo  请选择选项：
echo.
echo   1. 刷写系统
echo   2. 回读备份  
echo   3. 救砖到全成UI
echo   4. 进入全成Rec
echo   5. 设备重启
echo   6. 设备关机
echo.
echo ==========================================
echo  Copyright 2026 大哥科技
echo ==========================================
echo.
set /p choice="请输入号码执行："

if "%choice%"=="1" goto flash_system
if "%choice%"=="2" goto backup
if "%choice%"=="3" goto rescue
if "%choice%"=="4" goto recovery
if "%choice%"=="5" goto reboot
if "%choice%"=="6" goto shutdown

echo 无效选项，请重新输入
timeout /t 2 >nul
goto menu

:flash_system
cls
echo 请稍等，正在检查...
timeout /t 5 >nul
echo.
echo 安装全成UI...
echo.
set progress=0
:loading_loop
set /a progress+=10
if %progress% gtr 100 set progress=100
set "bar=["
set /a filled=%progress%/10
for /l %%i in (1,1,%filled%) do set "bar=!bar!=!"
for /l %%i in (%filled%,1,9) do set "bar=!bar! !"
set "bar=!bar!]"
cls
echo 请稍等，正在检查...
echo.
echo 安装全成UI...
echo %bar% %progress%%%
timeout /t 1 >nul
if %progress% lss 100 goto loading_loop
echo.
echo 【安装成功！】
pause
goto menu

:backup
echo 执行回读备份...
timeout /t 2 >nul
echo 备份完成！
pause
goto menu

:rescue
echo 执行救砖到全成UI...
timeout /t 2 >nul
echo 救砖完成！
pause
goto menu

:recovery
echo 进入全成Rec...
timeout /t 2 >nul
echo 已进入Rec模式！
pause
goto menu

:reboot
echo 设备重启中...
timeout /t 2 >nul
echo 重启完成！
pause
goto menu

:shutdown
echo 设备关机中...
timeout /t 2 >nul
echo 关机完成！
pause
goto menu
'''
