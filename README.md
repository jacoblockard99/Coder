# Coder
Welcome to the README for the Coder app!

Coder is a simple, terminal based application that encrypts text via the Vigenère cipher. It supports two "modes": relaxed and strict. In relaxed mode, codes are not case-sensitive, punctuation is not encrypted, and keys can only contain letters, numbers, and spaces. In strict mode, ciphertext is case-sensitive, punctuation is encrypted, and keys can contain most punctuation.

To install the application, please download the RPM file and install it using dnf.
## Usage
Commands are given in the following form:
```
coder OPTIONS
```
If an option accepts a value, type it immediately after the flag.
## Options
If you would like to view a help message pass the `--help` or `-h` flag to the app: `coder -h`.

To determine whether the app will _encrypt_ or _decrypt_ the text, use either the `--encrypt` or `--decrypt` flag.

To enable strict mode, (see above) pass the `--strict` flag. The app will use relaxed mode by default.

To specify the text to encrypt, pass the `--text` option followed by the text you want to use. Be sure to enclose the text in ***single*** quotation marks (double quotations may not work) if the text contains spaces or special characters.

To specify the key with which to encrypt or decrypt the text with, use the `--key` option: `coder ... --key KEY`. In relaxed mode keys may contain letters, numbers, and spaces **only**.

To read from a file instead of specifying text directly, use the `--file` option like so: `coder ... --file PATH_TO_FILE`

To output the _results_ of the encryption (or decryption) to a file use the `--output` option. For example: `coder ... --output PATH_TO_FILE`. If the file already exists, then it will be completely overwritten. If not, a new file will be created.
