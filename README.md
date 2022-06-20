# ecs-hello-world

See [http://hello-world-157934604.us-east-1.elb.amazonaws.com](http://hello-world-157934604.us-east-1.elb.amazonaws.com)

* CI: Packages into Docker image and deploys to ECR
* CD
* * Creates ECS Cluster/Service/Task
* * Updates image on each run


## Running the App

`npm install` and `npm run serve` to run the app locally.

`docker build -t ecs-hello-world .` to build the image.

## Deployment

`source .env`.

### ECR

`aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $REGISTRY`

`docker tag ecs-hello-world:latest $REGISTRY/ecs-hello-world:latest` to tag

`docker push $REGISTRY/ecs-hello-world:latest` to push

### Terraform

`terraform -chdir=terraform init && terraform -chdir=terraform apply`