# packer-nvidia-docker

![Version](https://img.shields.io/github/tag/uchida/packer-nvidia-docker.svg?maxAge=2592000)
[![License](https://img.shields.io/github/license/uchida/packer-nvidia-docker.svg?maxAge=2592000)](https://tldrlegal.com/license/creative-commons-cc0-1.0-universal)
[![CircleCI](https://img.shields.io/circleci/project/uchida/packer-nvidia-docker.svg?maxAge=2592000)](https://circleci.com/gh/uchida/packer-nvidia-docker)

packer template to build Ubuntu Server AMI (Amazon Machine Image) includes [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)
and NVIDIA graphics driver in [Personal Package Archives for Proprietary GPU Drivers](https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa).

## Requirements

- [packer](https://www.packer.io/)
- [ansible](https://www.ansible.com/)

## Building Images

To build images, simply run:

```
$ git clone https://github.com/uchida/packer-nvidia-docker
$ cd packer-nvidia-docker
$ export AWS_ACCESS_KEY_ID=xxx
$ export AWS_SECRET_KEY_ID=xxx
$ packer build template.json
```

About [nvidia-docker](https://github.com/NVIDIA/nvidia-docker),
see [nvidia-docker repository wiki](https://github.com/NVIDIA/nvidia-docker/wiki)

## Build configuration

To save cost, this build AMI with `t2.nano` instance
and you could launch it with GPU instances, such as `g2.2xlarge`, `g2.8xlarge`.

Default this build AMI in `ap-northeast-1` region,
to build AMI on other region, change `"region"` and `"source_ami"` with packer's
[`-var/-var-file` options](https://www.packer.io/docs/templates/user-variables.html)
or directly edit them in [`template.json`](template.json).

## License

Contents in this repository are dedicated to
[![CC0](http://i.creativecommons.org/p/zero/1.0/80x15.png "CC0")]
(https://creativecommons.org/publicdomain/zero/1.0/).
No rights reserved.

License for built AMI follows ones of [Ubuntu project](http://www.ubuntu.com/about),
[nvidia-docker](https://github.com/NVIDIA/nvidia-docker/blob/master/LICENSE)
and [NVIDIA software license](http://www.nvidia.com/object/nv_sw_license.html)
for NVIDIA graphics driver.

