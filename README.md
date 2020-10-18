# scala_interpreter

This is a project to create a scala interpreter using Docker.
It is for people who want to learn or to teach Scala programming language.

## prerequisites

To use the scala interpreter, you must install Docker at first.

You must install Docker following the instructions on its official documentation [here](https://docs.docker.com/get-docker/).

Or if you are on Linux, you could install Docker from the official repositories with this following command (for Ubuntu and Debian only):

```bash
sudo apt install docker.io
```
__important precision__: to generate the scala interpreter docker image with the most recent version of the language, you must change the version number in the Dockerfile. All of that is specified in the Dockerfile comments.

## Generate image from Dockerfile

If you want generate the Docker image from the repo's Dockerfile, you must clone the project's git repo first:

```bash
git clone https://github.com/Vicken-Ghoubiguian/Scala_interpreter
```
Then, execute the following command:

```bash
cd scala_interpreter
```
After it, execute this last command:

```bash
sudo docker image build -t <image_name>:<image_tag> .
```
It will generate the Docker image.

__important precision__: the element <image_name> corresponds to the image's name (put the `scala_interpreter` by default) and the <image_tag> corresponds to the image's tag (put the `latest` by default).

## Pull image from docker hub

There is a prepared docker image on docker hub [here](https://hub.docker.com/r/wicken/scala_interpreter).
To get the scala_interpreter image from docker hub, execute this command:

```bash
sudo docker pull wicken/scala_interpreter
```
## Your turn to play...

Now have fun.
To run the container, execute the following command:

```bash
sudo docker container run -it <image_name>
```
__important precision__: the element <image_name> corresponds to the image's name.
For example if you pulled the image from docker hub [here](https://hub.docker.com/r/wicken/scala_interpreter), the <image_name> element will be `wicken/scala_interpreter`.
Or if you follow the section `Generate image from Dockerfile`, the <image_name> element will be `scala_interpreter`.

Then the following output with the `>` prompt will be displayed:

```bash
Welcome to Scala 2.13.2 (OpenJDK 64-Bit Server VM, Java 11.0.7).
Type in expressions for evaluation. Or try :help.

scala>
```
It's your turn to play and....have fun.

To quit the interpreter, execute the following command:

```bash
scala> :quit
```
Now it's your turn to play...
