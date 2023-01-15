# vdockermv

The `os.mv()` function of V 0.3.2 does not work with Docker volumes.
This repository demonstrates it and is linked in the upstream issue report.
https://github.com/vlang/v/issues/16985

## Usage
Clone this repository.

Without docker this works:
```bash
v run .
```

With Docker volumes `os.mv()` fails:
```bash
docker-compose up --build
```

Error message:
`failed to rename /app/files/1.txt to /app/moved/moved.txt`

`os.mv` panics only if working with Docker volumes.

Executing the Linux `mv` command inside the Docker container with the same arguments as the `os.mv()` works.

## Workaround

Use `os.cp` and `os.rm`.
