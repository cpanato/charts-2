
# docker pull quay.io/roboll/helmfile:v0.48.0

#sops -e -i values/datadog/secrets.yaml

lint:
	helmfile -f helmfile.d lint

apply:
	helmfile -f helmfile.d apply --suppress-secrets

delete:
	helmfile -f helmfile.d delete --purge

diff:
	helmfile -f helmfile.d diff --suppress-secrets
