# Bootstrap infrastructure

Bootstrapping creates a terraform bucket for remote state in the project. Run
once, take note of the bucket name and move on.

Set project and region in `.env` as follows:

```
# .env
export TF_VAR_project="<< example project title >>"
export TF_VAR_region="<< your region >>" 
```

And deploy as follow:

```
gcloud auth application-default login
. .env
tofu init
tofu plan
tofu apply
```
