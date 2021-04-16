set -x

rm -rf ${module_path}/.terraform
terraform -chdir=${module_path} init -input=false -backend=false -no-color
terraform -chdir=${module_path} validate -no-color
