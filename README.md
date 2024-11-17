<br>

# Python To Mojo

Python code snippets with their Mojo equivalents.

<br>

## Mojo Playground

A Mojo programming environment is available from the Mojo product [page](https://www.modular.com/mojo).

<br>

## Local installation

At the time of writing, Mojo is available for Ubuntu-based linux distros, MacOS (M1 and M2) and WSL2 on Windows.

<br>

## Environment variables

These are at the end of my .bashrc file on Ubuntu.

```sh
export MODULAR_HOME="/home/user/.modular"
export PATH="/home/user/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export MOJO_PYTHON_LIBRARY="/usr/lib/x86_64-linux-gnu/libpython3.10.so"
```

These are at the end of my .zshrc file on my M2 Mac.

```sh
export MODULAR_HOME="/Users/sammiturner/.modular"
export PATH="/Users/sammiturner/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export MOJO_PYTHON_LIBRARY="/opt/homebrew/bin/python3"
```

<br>

## Editor recommendation

Due to the Mojo ecosystem being in its infancy right now, I recommend using VSCode as your editor, with the [Error Lens and Mojo extensions installed](https://youtu.be/KYEAiTBbNT8?si=_jTQnoe3cj3ViLYB).

<br>

## Shell aliases

To save time building and running my Mojo code, I have added some aliases to my .bashrc file.

```sh
# MOJO ALIASES
alias mbr='mojo build app.mojo && ./app'
alias mba='mojo build app.mojo'
alias mra='./app'
```

<br>

## AI Code Generation

Large Language Models (LLMs) are only effective for me because I don't trust their output.

I always test the code that they generate!

However, given that Python3 is a mature language that is fairly popular in academia and industry, there is a suprising amount of training data for them to work with.

Once you have generated the code that you want in Python3, manually making the changes required to turn it into valid Mojo code is not so hard.

<br>

## Learning Python with LLMs

This prompt template is good for learning Python idioms.

```
What is the idiomatic way to [do the thing you want to do]
in Python3?
```

<br>

## Function Generation With LLMs

This prompt template is good for generating Python functions.

```
Write a [name] function in Python3 that takes
[name the parameters and their types] and returns
a [type] such that [describe what the function does].
Then show me the code.
```

<br>
