# Flask app ran in docker container
- ```git clone https://github.com/jinminlei/flask-auth-start.git```
- ```cd flask-auth-start```
- ```docker-compose up```
- Open the page in the browser ```http://localhost:5000/```

# Flask app ran in AWS ECS
- Clone the repository ```git clone https://github.com/jinminlei/flask-auth-start.git```
- Enter the working directory ```cd flask-auth-start```
- Create the AWS ECR respository ```aws ecr create-repository --repository-name jinmin-test --region us-east-1```
- Build the docker image and tag as your AWS ECR URI ```docker build -t your-aws-account.dkr.ecr.us-east-1.amazonaws.com/jinmin-test:latest .```
- Login AWS ECR ```aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin your-aws-account.dkr.ecr.us-east-1.amazonaws.com```
- Push docker image to AWS ECR```docker push your-aws-account.dkr.ecr.us-east-1.amazonaws.com/jinmin-test:latest```
- Create ECS task (Fargate)
- Run task (Fargate)
