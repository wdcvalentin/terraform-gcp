## Readme
frist you have to enable API CLOUD BUILD & CLOUD RESOURCE MANAGER MANUALLY on
https://console.cloud.google.com/apis/api/cloudbuild.googleapis.com
https://console.cloud.google.com/apis/api/cloudresourcemanager.googleapis.com

then you can :
- terraform init
- terraform plan (optional)
- terraform apply

I am using the cloud function with python :
       It will compress the python code and send it to the bucket cloud_function

I've also initialized the Google big query dataset, the data are provided from the google sheet.