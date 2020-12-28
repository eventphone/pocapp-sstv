<!--
SPDX-FileCopyrightText: 2020 Sascha Ludwig
SPDX-License-Identifier: BSD-3-Clause
-->

# POCAPP SSTV

The script sends a random image over SIP with usage of SSTV
Inspired by https://twitter.com/SmithChart/status/1343265595484209152

## Usage

The script is intended to be used within the Eventphone telephone system.


## Convert your images into SSTV slin files

You can use the following script to convert all .jpg or .png images into SSTV slin files:

```sh
bash ./convert_to_sstv.sh
```

You may need to install the pysstv and sox package:

```sh
pip3 install pysstv
apt install libsox-fmt-mp3
```


## License

Please see the file [LICENSE.md](LICENSE.md) for further information about how the content is licensed.

