# Ksh process , functions and errors

Folder ksh: contains ksh files
Folder log: store excutions loggs

Change to **ksh** folder

```cmd
cd ksh
```

Execute ksh usin ksh filename:

```cmd
ksh step1.ksh
```

Add logger.ksh for logging and use in step1.ksh

Error handler in step2.ksh

```ksh
    exit 1
    echo >&2 "Message Error!!!!"
```
