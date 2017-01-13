# RPI Prometheus

* Master : [![Circle CI](https://circleci.com/gh/zeiot/rpi-prometheus/tree/master.svg?style=svg)](https://circleci.com/gh/zeiot/rpi-prometheus/tree/master) [![Build Status](https://travis-ci.org/zeiot/rpi-prometheus.svg?branch=master)](https://travis-ci.org/zeiot/rpi-prometheus)
* Develop : [![Circle CI](https://circleci.com/gh/zeiot/rpi-prometheus/tree/develop.svg?style=svg)](https://circleci.com/gh/zeiot/rpi-prometheus/tree/develop) [![Build Status](https://travis-ci.org/zeiot/rpi-prometheus.svg?branch=develop)](https://travis-ci.org/zeiot/rpi-prometheus)

Docker image of [Prometheus][] to use on a [Raspberry PI][].

Configure binfmt-support on the Docker host (works locally or remotely, i.e: using boot2docker):

    $ docker run --rm --privileged multiarch/qemu-user-static:register --reset

Then you can run an armhf image from your x86_64 Docker host :

    $ make run version=x.x

Or build :

    $ make build version=x.x


# Supported tags

* [![](https://images.microbadger.com/badges/version/zeiot/rpi-prometheus:1.3.0.svg)](https://microbadger.com/images/zeiot/rpi-prometheus:1.3.0 "Get your own version badge on microbadger.com")
* [![](https://images.microbadger.com/badges/version/zeiot/rpi-prometheus:1.2.2.svg)](https://microbadger.com/images/zeiot/rpi-prometheus:1.2.2 "Get your own version badge on microbadger.com")
* [![](https://images.microbadger.com/badges/version/zeiot/rpi-prometheus:1.2.1.svg)](https://microbadger.com/images/zeiot/rpi-prometheus:1.2.1 "Get your own version badge on microbadger.com")
* [![](https://images.microbadger.com/badges/version/zeiot/rpi-prometheus:1.2.0.svg)](https://microbadger.com/images/zeiot/rpi-prometheus:1.2.0 "Get your own version badge on microbadger.com")
* [![](https://images.microbadger.com/badges/version/zeiot/rpi-prometheus:1.1.3.svg)](https://microbadger.com/images/zeiot/rpi-prometheus:1.1.3 "Get your own version badge on microbadger.com")
* [![](https://images.microbadger.com/badges/version/zeiot/rpi-prometheus:1.1.2.svg)](https://microbadger.com/images/zeiot/rpi-prometheus:1.1.2 "Get your own version badge on microbadger.com")


## License

See [LICENSE](LICENSE) for the complete license.


## Changelog

A [ChangeLog.md](ChangeLog.md) is available.


## Contact

Nicolas Lamirault <nicolas.lamirault@gmail.com>


[Raspberry PI]: https://www.raspberrypi.org/
[Prometheus]: https://prometheus.io/
