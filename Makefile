.PHONY: install uninstall doctor reload

install:
	./scripts/install.sh

uninstall:
	./scripts/uninstall.sh

doctor:
	./scripts/doctor.sh

reload:
	./scripts/reload.sh
