## SSH-C2 server

## Generate keys

```
ssh-keygen
```

To generate them in the cwd pass the name when prompted `id_rsa`.

## Run server
```
python3 sshserver.py
```

## Run Implant
```
python3 implant.py
```

The server defines the commands to pass to the exploit to execute in the target environment. We need to figure out the steps to exfliltrate information, like user passwords. `cat /etc/passwd` is not currently returning values, so this is somethig to work on.