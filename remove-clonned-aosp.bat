@echo on
color 30

for /f %%o in (duplicated.txt) do else (
	for /f %%i in (proprietary-files.txt) do if "%%o" == "%%i" (echo. >nul) else (
			echo %%i >> proprietary-files_clean.txt
	)
)