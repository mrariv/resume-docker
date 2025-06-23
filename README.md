## Resume Build in Docker
To build a resume run:

```bash
docker build -t resume-docker .
docker run --rm -v $(pwd):/resume resume-docker
