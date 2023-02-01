dependency "global" {
  config_path = "../../global/global-module-1"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  bucket_arn = dependency.global.outputs.bucket_arn
}
