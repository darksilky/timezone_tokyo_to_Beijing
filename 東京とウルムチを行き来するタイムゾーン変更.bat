for /f "usebackq tokens=*" %%a in (`tzutil /g`) do @set x="%%a"
IF "Tokyo Standard Time"== %x% (tzutil /s "China Standard Time") ELSE IF "China Standard Time"== %x% (tzutil /s "Tokyo Standard Time")