# Coder
Welcome to the README for the Coder app!

Coder is a simple, terminal based application that encrypts text via the Vigenère cipher. It supports two "modes": relaxed and strict. In relaxed mode, codes are not case-sensitive, punctuation is not encrypted, and keys can only contain letters, numbers, and spaces. In strict mode, ciphertext is case-sensitive, punctuation is encrypted, and keys can contain most punctuation.

## Installation
### From source
To install the app from source, download the tarball for the version that you wish to install from the Releases page. Or, if you prefer, you can download the source files directly (coder, encryption.rb, README.md). After unpacking the tarball, place the "coder" file in "/usr/local/bin". Place "encryption.rb" in "/usr/local/share/ruby/vendor_ruby/coder". You should now be able to run the app by using the command `coder`.

### Binary installer
To install the application from a binary installer, please download either the RPM or DEB file from the Releases page. If there is not a .deb file for a release, you will have to install the app from source.

## Usage
Commands are given in the following form:
```
coder [--option-name] [option-value]
```
If an option accepts a value, type it immediately after the flag.
## Options
If you would like to view a help message pass the `--help` or `-h` flag to the app: `coder -h`.

To determine whether the app will _encrypt_ or _decrypt_ the text, use either the `--encrypt` or `--decrypt` flag. The default is encrypt.

To enable strict mode, (see above) pass the `--strict` flag. The app will use relaxed mode by default.

To specify the text to encrypt, pass the `--text` option followed by the text you want to use. Be sure to enclose the text in ***single*** quotation marks (double quotations may not work) if the text contains spaces or special characters.

To specify the key with which to encrypt or decrypt the text with, use the `--key` option: `coder ... --key KEY`. In relaxed mode keys may contain letters, numbers, and spaces **only**.

To read from a file instead of specifying text directly, use the `--file` option like so: `coder ... --file PATH_TO_FILE`

To output the _results_ of the encryption (or decryption) to a file use the `--output` option. For example: `coder ... --output PATH_TO_FILE`. If the file already exists, then it will be completely overwritten. If not, a new file will be created.
