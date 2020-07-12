# Docker-AutoIt

This container runs Wine and contains the AutoIt v3 code in `/app`, and is designed to make it easy to compile AutoIt code on non-windows systems.

## Usage

- Aut2Exe

To turn `file.au3` into a PE32 `file.exe`:

```shell
docker run --rm -v $PWD:/code legacylanparty/autoit:latest Aut2Exe/aut2exe.exe /in "/code/file.au3"
```

For more options, refer to [the documentation](https://www.autoitscript.com/autoit3/docs/intro/compiler.htm).