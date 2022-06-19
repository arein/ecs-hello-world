# ecs-hello-world

`npm install` and `npm run serve` to run the app locally.

`docker build -t ecs-hello-world .` to build the image.

## ECR

`aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $REGISTRY`

`docker tag ecs-hello-world:latest $REGISTRY/ecs-hello-world:latest` to tag

`docker push $REGISTRY/ecs-hello-world:latest` to push