# Workspaces
A simple bash function that creates a temporary working directory in `/temp` with a specific language
template eg. for C a `main.c` file and a `Makefile` are copied in and vim is launched.

## Usage
The function can be called and the folder name is passed in as the first argument, the second
argument is the language. The current languages are: `c`, `c++` and `py`.
```console
user@linux:~$ ws test c
```
The above creates a C project template in the folder `/tmp/test`.

To create a random folder name use:
```console
user@linux:~$ wsr c
```

