## Infrastructure

The core infrastructure for the application. Deployed infreqently and with high
permissions.

Set project, region and state bucket in `.env` as follows:

```
# .env
export TF_VAR_project="<< example project title >>"
export TF_VAR_region="<< your region >>" 
export TF_VAR_state_bucket="<< bucket name from 00-bootstrap >>"
```

And deploy as follow:

```
gcloud auth application-default login
. .env
tofu init
tofu plan
tofu apply
```
