apiVersion: apps/v1beta1
kind: Deployment
metadata:
  name: iris-rest
  namespace: iris
spec:
  replicas: 1
  strategy:
    type: Recreate
  selector:
    matchLabels:
      app: iris
  template:
    metadata:
      labels:
        app: iris
    spec:
      containers:
      - image: DOCKER_REPO_NAME/iris-rest:DOCKER_IMAGE_TAG
        name: iris-rest
        ports:
        - containerPort: 52773
          name: web