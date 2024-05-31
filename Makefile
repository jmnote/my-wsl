preflight:
	bash scripts/preflight.sh

install:
	bash scripts/install.sh

start: preflight install
