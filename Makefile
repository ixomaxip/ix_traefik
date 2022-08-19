include .env
-include .env.local

T2_ROOT=traefik2
T2_DIRS='acme' 'rules' 'rules/cloudserver'

t2-dirs:
	@mkdir -vp $(addprefix $(T2_ROOT)/,$(T2_DIRS))