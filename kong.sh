helm install stable/kong \
    --set admin.useTLS=false \
    --set readinessProbe.httpGet.scheme=HTTP \
    --set livenessProbe.httpGet.scheme=HTTP