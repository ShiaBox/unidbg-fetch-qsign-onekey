@echo off
title Qsign-Onekey by rhwong shia v1.1.9-fix1-sealdice 8970 
setlocal enabledelayedexpansion
set JAVA_HOME=.\jre
set "ver=1.1.9-fix1"
set "library=txlib/"
set "config_file=config.yml"
set "account=1233456"
set "password="
if not exist "txlib_version.json" (
	REM txlib_version_config_file does not exist.
) else ( 
for /F "delims=" %%D in ('lib\jq.exe -r ".txlib_version" txlib_version.json') do set "txlib_version=%%D" 
)

set "json_file=%library%%txlib_version%/config.json"

echo " ______  ______  __  ______  __   __       ______  __   __  ______  __  __  ______  __  __    "
echo "/\  __ \/\  ___\/\ \/\  ___\/\ \-.\ \     /\  __ \/\ \-.\ \/\  ___\/\ \/ / /\  ___\/\ \_\ \   "
echo "\ \ \/\_\ \___  \ \ \ \ \__ \ \ \-.  \    \ \ \/\ \ \ \-.  \ \  __\\ \  _'-\ \  __\\ \____ \  "
echo " \ \___\_\/\_____\ \_\ \_____\ \_\\ \_\    \ \_____\ \_\\ \_\ \_____\ \_\ \_\ \_____\/\_____\ "
echo "  \/___/_/\/_____/\/_/\/_____/\/_/ \/_/     \/_____/\/_/ \/_/\/_____/\/_/\/_/\/_____/\/_____/ "
                                                                                              
if not exist "txlib_version.json" (
  echo -------------------------------------------------------------------------------------------------
  echo unidbg-fetch-qsign-onekey Ver.%ver%
  echo txlib_version_config_file does not exist.
  echo Please enter an option to save. 
  echo If you press enter directly, save the default values.
  echo -------------------------------------------------------------------------------------------------
  set /p "txlib_version=txlib_version(optional:3.5.1/3.5.2/8.9.58/8.9.63/8.9.68/8.9.70(default)/8.9.71/8.9.73): "
       if "!txlib_version!"=="" (
	   set "txlib_version=8.9.70"
       )  
  set "json_file=%library%!txlib_version!/config.json"
  
  set /p "host=host(default:127.0.0.1): "
      if "!host!"=="" (
      set "host=127.0.0.1"
      )
  set /p "port=port(default:13579): "
      if "!port!"=="" (
      set "port=13579"
      )
  set /p "key=key(default:1145141919810): "
      if "!key!"=="" (
      set "key=1145141919810"
      )

  if "!txlib_version!"=="3.5.1" (
    echo { "server": { "host": "!host!", "port": !port! }, "key": "!key!", "auto_register": true, "protocol": { "package_name": "com.tencent.tim", "qua": "V1_AND_SQ_8.3.9_351_TIM_D", "version": "3.5.1", "code": "1298" }, "unidbg": { "dynarmic": false, "unicorn": true, "debug": false } } > "!json_file!"
	  echo {"txlib_version": "3.5.1"} > txlib_version.json
	)

  if "!txlib_version!"=="3.5.2" (
    echo { "server": { "host": "!host!", "port": !port! }, "key": "!key!", "auto_register": true, "protocol": { "package_name": "com.tencent.tim", "qua": "V1_AND_SQ_8.3.9_352_TIM_D", "version": "3.5.2", "code": "1308" }, "unidbg": { "dynarmic": false, "unicorn": true, "debug": false } } > "!json_file!"
	  echo {"txlib_version": "3.5.2"} > txlib_version.json
	)

  if "!txlib_version!"=="8.9.58" (
    echo { "server": { "host": "!host!", "port": !port! }, "key": "!key!", "auto_register": true, "protocol": { "package_name": "com.tencent.mobileqq", "qua": "V1_AND_SQ_8.9.58_4106_YYB_D", "version": "8.9.58", "code": "4106" }, "unidbg": { "dynarmic": false, "unicorn": true, "debug": false } } > "!json_file!"
	  echo {"txlib_version": "8.9.58"} > txlib_version.json
	)

  if "!txlib_version!"=="8.9.63" (
    echo { "server": { "host": "!host!", "port": !port! }, "key": "!key!", "auto_register": true, "protocol": { "package_name": "com.tencent.mobileqq", "qua": "V1_AND_SQ_8.9.63_4194_YYB_D", "version": "8.9.63", "code": "4194" }, "unidbg": { "dynarmic": false, "unicorn": true, "debug": false } } > "!json_file!"
	  echo {"txlib_version": "8.9.63"} > txlib_version.json
	)

  if "!txlib_version!"=="8.9.68" (
	  echo { "server": { "host": "!host!", "port": !port! }, "key": "!key!", "auto_register": true, "protocol": { "package_name": "com.tencent.mobileqq", "qua": "V1_AND_SQ_8.9.68_4264_YYB_D", "version": "8.9.68", "code": "4264" }, "unidbg": { "dynarmic": false, "unicorn": true, "debug": false } } > "!json_file!"
	  echo {"txlib_version": "8.9.68"} > txlib_version.json
    )
	
  if "!txlib_version!"=="8.9.70" (
    echo { "server": { "host": "!host!", "port": !port! }, "key": "!key!", "auto_register": true, "protocol": { "package_name": "com.tencent.mobileqq", "qua": "V1_AND_SQ_8.9.70_4330_YYB_D", "version": "8.9.70", "code": "4330" }, "unidbg": { "dynarmic": false, "unicorn": true, "debug": false } } > "!json_file!"
	  echo {"txlib_version": "8.9.70"} > txlib_version.json
	)
	
  if "!txlib_version!"=="8.9.71" (
    echo { "server": { "host": "!host!", "port": !port! }, "key": "!key!", "auto_register": true, "protocol": { "package_name": "com.tencent.mobileqq", "qua": "V1_AND_SQ_8.9.71_4332_YYB_D", "version": "8.9.71", "code": "4332" }, "unidbg": { "dynarmic": false, "unicorn": true, "debug": false } } > "!json_file!"
	  echo {"txlib_version": "8.9.71"} > txlib_version.json
	)

  if "!txlib_version!"=="8.9.73" (
    echo { "server": { "host": "!host!", "port": !port! }, "key": "!key!", "auto_register": true, "protocol": { "package_name": "com.tencent.mobileqq", "qua": "V1_AND_SQ_8.9.73_4416_YYB_D", "version": "8.9.73", "code": "4416" }, "unidbg": { "dynarmic": false, "unicorn": true, "debug": false } } > "!json_file!"
	  echo {"txlib_version": "8.9.73"} > txlib_version.json
	)

  if "!txlib_version!" neq "8.9.58" (
    if "!txlib_version!" neq "8.9.63" (
        if "!txlib_version!" neq "8.9.68" (
          if "!txlib_version!" neq "8.9.70" (
            if "!txlib_version!" neq "8.9.71" (
              if "!txlib_version!" neq "8.9.73" (
                if "!txlib_version!" neq "3.5.1" (
                  if "!txlib_version!" neq "3.5.2" (
            echo Warning: Wrong txlib_ Version. The protocol must be 3.5.1/3.5.2/8.9.58/8.9.63/8.9.68/8.9.70/8.9.73
            timeout 10
            exit /b
                  )
                )
              )
            )
          )
        )
      )
  )
) else (   
  for /F "delims=" %%D in ('lib\jq.exe -r ".txlib_version" txlib_version.json') do set "txlib_version=%%D"
  set "json_file=%library%!txlib_version!/config.json"
  echo -------------------------------------------------------------------------------------------------
  echo unidbg-fetch-qsign-onekey Ver.%ver%
  echo txlib_Version is %txlib_version%
  echo If you want to change txlib_version , please delete [txlib_version.json]!
  echo -------------------------------------------------------------------------------------------------
  for /F "delims=" %%A in ('lib\jq.exe -r ".server.host" %json_file%') do set "host=%%A"
  for /F "delims=" %%B in ('lib\jq.exe -r ".server.port" %json_file%') do set "port=%%B"
  for /F "delims=" %%C in ('lib\jq.exe -r ".key" %json_file%') do set "key=%%C"
)

set "targetPattern=*sealdice-core*.exe"
set "fileExists=0"

for %%i in (%targetPattern%) do (
    set "fileExists=1"
)

if %fileExists%==1 (
	  set /p "account=Account uin: "
      echo -------------------------------------------------------------------------------------------------
      echo Your uin:!account!
	  echo Sync protocol version to go-cqhttp data folder.
      md data\default\extra\go-cqhttp-qq!account!\data\versions
      if "!txlib_version!" neq "3.5.1" (
        if "!txlib_version!" neq "3.5.2" (
          if "!txlib_version!" neq "8.9.71" (
      copy txlib\!txlib_version!\android_pad.json data\default\extra\go-cqhttp-qq!account!\data\versions\6.json
      copy txlib\!txlib_version!\android_phone.json data\default\extra\go-cqhttp-qq!account!\data\versions\1.json
          )
        )
      )
      if "!txlib_version!"=="8.9.71" (
        echo Warning : This protocol just support ANDROID_PHONE now!!!!! Please changed device.json -> protocol=1
        copy txlib\!txlib_version!\android_phone.json data\default\extra\go-cqhttp-qq!account!\data\versions\1.json
      )
) else (
  echo -------------------------------------------------------------------------------------------------
  echo Run separately from sealdice?
  echo Please manually synchronize the protocol version.
)  

echo -------------------------------------------------------------------------------------------------
echo Qsign API:http://!host!:!port!
echo KEY=!key!
echo Qsign_version:%ver%
echo TXlib_version:%txlib_version% 
echo -------------------------------------------------------------------------------------------------
timeout /t 3 > nul
bin\unidbg-fetch-qsign --basePath=%library%%txlib_version%
