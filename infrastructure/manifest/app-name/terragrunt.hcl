remote_state {
  backend  = "s3"
  generate = {
    path      = "_backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    dynamodb_table          = "rustem-chinaev-mne-terraform-state"
    bucket                  = "rustem-chinaev-mne-terraform-state"
    key                     = "${path_relative_to_include()}/terraform.tfstate"
    skip_bucket_root_access = true
    workspace_key_prefix    = "env"
    region                  = "us-east-1"
    encrypt                 = true
  }
  disable_dependency_optimization = true
}
