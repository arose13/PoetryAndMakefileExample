# How to interpret a Makefile

```makefile
.PHONY: <cmd 1> <cmd 2> <cmd 3>

<cmd>: <dep 1> <dep 2> <dep 3>
    <arbitary terminal cmd 1>
    <arbitary terminal cmd 2>
    <arbitary terminal cmd 3>
```

For example
```makefile
.PHONY: install test run uninstall

install:
    wget google.com
    poetry install

run: install
    @echo "Running the program"
    poetry run python main.py
```
