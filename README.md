# vdockermv

The `os.mv()` function of V 0.3.2 does not work with Docker volumes.
This repository demonstrates it and will be included in the upstream issue report.

## Usage
Clone this repository.

Running normal this works:
```bash
v run .
```

With Docker volumes `os.mv()` fails:
```bash
docker-compose up --build
```

Error message:
`failed to rename /app/files/1.txt to /app/moved/moved.txt`

