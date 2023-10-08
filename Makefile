
SRC_FOLDER := ./src
LOG_TAIL := 100

ENV_FILE := .pi.env

DOCKER_COMPOSE_PI4 := docker-compose \
	--env-file ${SRC_FOLDER}/env/${ENV_FILE} \
	-f ${SRC_FOLDER}/grafana.yml \
	-f ${SRC_FOLDER}/prometheus.yml \

_system:
	sudo sysctl -w vm.max_map_count=262144

# ----------------------------------------
# RASBERRY PI4
pi4.run:
	${DOCKER_COMPOSE_PI4} up -d
pi4.pull:
	${DOCKER_COMPOSE_PI4} pull
pi4.stop:
	${DOCKER_COMPOSE_PI4} stop
pi4.restart:
	${DOCKER_COMPOSE_PI4} restart
pi4.cleanup:
	${DOCKER_COMPOSE_PI4} rm -f
pi4.update: \
	pi4.stop \
	pi4.cleanup \
	pi4.pull \
	pi4.run
pi4.logs:
	${DOCKER_COMPOSE_PI4} logs -f --tail ${LOG_TAIL}
