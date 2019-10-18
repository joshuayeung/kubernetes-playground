# Add kfctl to PATH, to make the kfctl binary easier to use.
# Use only alphanumeric characters or - in the directory name.
export PATH=$PATH:"/root/"
export KFAPP="kubeflow"
# Installs Istio by default. Comment out Istio components in the config file to skip Istio installation. See https://github.com/kubeflow/kubeflow/pull/3663

export CONFIG="https://raw.githubusercontent.com/kubeflow/kubeflow/v0.6-branch/bootstrap/config/kfctl_k8s_istio.0.6.2.yaml"
kfctl init ${KFAPP} --config=${CONFIG} -V
cd ${KFAPP}
kfctl generate all -V
kfctl apply all -V

kubectl -n kubeflow get  all