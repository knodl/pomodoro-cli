## This tool is for MacOS only, sorry

### Simple CLI pomodoro daemon

Pomodoro – well-known tool to make your time-management more efficient.

This tool shows notification window between work and rest cycles and also notifies you about it with sounds :)


#### Launch

This script uses 2 arguments:

* `w` – number of minutes of working period (default value = 30)
* `r` – number of minutes to rest between working periods (default value = 5)


to launch the tool in the background

```
>> cd ~/folder/with/pomodoro
>> bash pomodoro.sh -w 50 -r 15 &
```


