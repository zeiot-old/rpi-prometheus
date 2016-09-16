# RPI Prometheus

* Master : [![Circle CI](https://circleci.com/gh/zeiot/rpi-prometheus/tree/master.svg?style=svg)](https://circleci.com/gh/zeiot/rpi-prometheus/tree/master)
* Develop : [![Circle CI](https://circleci.com/gh/zeiot/rpi-prometheus/tree/develop.svg?style=svg)](https://circleci.com/gh/zeiot/rpi-prometheus/tree/develop)

Docker image of [Prometheus][] to use on a [Raspberry PI][].

Configure binfmt-support on the Docker host (works locally or remotely, i.e: using boot2docker):

    $ docker run --rm --privileged multiarch/qemu-user-static:register --reset

Then you can run an armhf image from your x86_64 Docker host :

    $ make run version=3.1

Or build :

    $ make build version=3.1


# Supported tags

* [![](https://images.microbadger.com/badges/version/zeiot/rpi-grafana.svg)](http://microbadger.com/images/zeiot/rpi-grafana "Get your own version badge on microbadger.com")


## License

See [LICENSE](LICENSE) for the complete license.


## Changelog

A [ChangeLog.md](ChangeLog.md) is available.


## Contact

Nicolas Lamirault <nicolas.lamirault@gmail.com>


[Raspberry PI]: https://www.raspberrypi.org/
[Prometheus]: https://prometheus.io/
