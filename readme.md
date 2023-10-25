# Ksh process , functions, parallel and errors

Folder ksh: contains ksh files
Folder log: store excutions loggs

Change to **ksh** folder

```cmd
cd ksh
```

Execute ksh using ksh filename:

```cmd
ksh step1.ksh
```

## Use ksh logger
Add logger.ksh for logging and use in step2.ksh

Error handler in step2.ksh

```ksh
    exit 1
    echo >&2 "Message Error!!!!"
```

Parallel processes submited in **step3.ksh** usin **&** and **wait**

## Error handler sql

In step4.ksh, set Db parameters, and handle database error
