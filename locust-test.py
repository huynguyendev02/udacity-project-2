from locust import HttpUser, task, between

class AzureAppUser(HttpUser):
    wait_time = between(1, 5)  # Simulated users will wait 1-5 seconds between tasks

    @task
    def post_predict(self):
        # JSON payload as per the shell script
        payload = {
            "CHAS": {"0": 0},
            "RM": {"0": 6.575},
            "TAX": {"0": 296.0},
            "PTRATIO": {"0": 15.3},
            "B": {"0": 396.9},
            "LSTAT": {"0": 4.98}
        }
        headers = {"Content-Type": "application/json"}
        self.client.post("/predict", json=payload, headers=headers)