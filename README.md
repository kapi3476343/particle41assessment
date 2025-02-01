# particle41assessment



# Task1 - Tiny App Development 'SimpleTimeService'

A lightweight microservice that returns the current timestamp and the client's IP address.

## Features

- Built with FastAPI
- Dockerized for easy deployment
- Runs as a non-root user for security
- Lightweight and minimal dependencies

## Prerequisites

Ensure you have the following installed:

- Python 
- Docker

## API Endpoint

### **GET /**

Returns the current timestamp and the client's IP address.

#### **Example Response:**

```json
{
  "timestamp": "2025-01-31T12:00:00.000Z",
  "ip": "192.168.1.1"
}
```

## Implementation & Running Locally
   1. Python application (app.py)
   2. Dockerfile to containerize
   3. requirements.txt file

### **Running locally**

1. Install dependencies:
   ```sh
   pip install -r requirements.txt
   ```

   <img src="./screenshorts/Task1 - 1.png">

2. Start the server:
   ```sh
   python app.py
   ```
   
   <img src="./screenshorts/Task1 - 2.png">
   
5. Access the API:

   <img src="./screenshorts/Task1 - 3.png">

## Running with Docker

### **Build and Run the Container**

1. Build the Docker image:
   ```sh
   docker build -t simple-time-service .
   ```

  <img src="./screenshorts/Task1 - 4.png">
   
2. Run the container:
   ```sh
   docker run -p 8000:8000 simple-time-service
   ```

  <img src="./screenshorts/Task1 - 5.png">
   
3. Access the API:

  <img src="./screenshorts/Task1 - 6.png">

## Deploying to Docker Hub

### **Push Image to Docker Hub**

1. Log in to Docker Hub:
   ```sh
   docker login
   ```
2. Tag the Docker image:
   ```sh
   docker tag simple-time-service <your-dockerhub-username>/simple-time-service:latest
   ```
3. Push the image:
   ```sh
   docker push <your-dockerhub-username>/simple-time-service:latest
   ```
   <img src="./screenshorts/Task1 - 7.png">

   DockerHub:

   <img src="./screenshorts/Task1 - 8.png">
   
5. Pull and run the image anywhere using:
   ```sh
   docker run -p 8000:8000 <your-dockerhub-username>/simple-time-service:latest
   ```

  <img src="./screenshorts/Task1 - 9.png">

## Final Conclusion: Running Docker Container Successfully
  
  run using:
   ```sh
   docker run -p 8000:8000 kapi3476343/simple-time-service:latest
   ```  

  Now, Anyone can Pull and run the image anywhere across the planet :)
  


# Task2 -


  terraform/
  ├── main.tf
  ├── variables.tf
  ├── outputs.tf
  ├── terraform.tfvars
  ├── README.md
  └── modules/
      ├── vpc/
      │   ├── main.tf
      │   ├── variables.tf
      │   └── outputs.tf
      ├── ecs/
      │   ├── main.tf
      │   ├── variables.tf
      │   └── outputs.tf
      └── load_balancer/
          ├── main.tf
          ├── variables.tf
          └── outputs.tf
