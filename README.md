# Python tutorial

## Setup
```
docker-compose up -d
```

```
docker-compose logs jupyter
```

```
python-tutorials |     To access the notebook, open this file in a browser:
python-tutorials |         file:///root/.local/share/jupyter/runtime/nbserver-8-open.html
python-tutorials |     Or copy and paste one of these URLs:
python-tutorials |         http://21342a329f6f:8000/?token=a1ff75056ffcaaa70a8ad2c45c14e102c13f0a4855205398
python-tutorials |      or http://127.0.0.1:8000/?token=a1ff75056ffcaaa70a8ad2c45c14e102c13f0a4855205398
```

## Memo
Using `nvidia-docker`

### How to install on Ubuntu
```
$ distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
$ curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
$ curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
$ sudo apt-get update
$ sudo apt-get install -y nvidia-docker2
$ sudo systemctl restart docker
```
