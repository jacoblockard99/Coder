# Kryptonite
Welcome to the README for the Kryptonite app!

Kryptonite is a simple terminal based application that encrypts text via the Vigenère cipher. It supports two "modes": relaxed and strict. In relaxed mode, codes are not case-sensitive, punctuation is not encrypted, and keys can only contain letters, numbers, and spaces. In strict mode, ciphertext is case-sensitive, punctuation is encrypted, and keys can contain most punctuation.

To use the application, you will need to have Ruby installed on your computer. Then, you can just download and run the ruby files: `./kryptonite.rb`.

## Usage
Commands are given in the following form:
```
./kryptonite.rb OPTIONS
```
If an option accepts a value type it immediately after the flag.

If you would like to view a help message pass the `--help` or `-h` flag to the app: `./kryptonite.rb -h`.

To determine whether the app will _encrypt_ or _decrypt_ the text, use either the `--encrypt` or `--decrypt` flag.

To enable strict mode, (case-sensitive, encrypted punctuation, full keys) pass the `--strict` flag. The app will use relaxed mode by default.

To specify the text to encrypt or decrypt, pass the `--text` option followed by the text you would like to use. Don't forget to enclose the text in ***single*** quotation marks (double quotations may not work) if the text contains spaces or special characters.

To specify the key with which to encrypt or decrypt the text with, use the `--key` option: `./kryptonite.rb ... --key KEY`. In relaxed mode keys must use letters, numbers, and spaces **only**.
