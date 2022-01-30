#!/usr/bin/env sh

# Some globals.
export ROOT_DIR="$(cd "$(dirname -- "${0}")" >/dev/null 2>&1 ; pwd -P)"
export BASENAME="$(basename -- "${0}")"

HOSTNAME="$(hostname)"

# Find venv dir if existing.
[[ -e "${ROOT_DIR}/.venv/bin/activate" ]] && VENV_DIR="${ROOT_DIR}/.venv"
[[ -e "${ROOT_DIR}/.venv/${HOSTNAME}/bin/activate" ]] && VENV_DIR="${ROOT_DIR}/.venv/${HOSTNAME}"
[[ -e "${ROOT_DIR}/venv/bin/activate" ]] && VENV_DIR="${ROOT_DIR}/venv"
[[ -e "${ROOT_DIR}/venv/${HOSTNAME}/bin/activate" ]] && VENV_DIR="${ROOT_DIR}/venv/${HOSTNAME}"

# Activate venv if available.
[[ -n "${VENV_DIR}" ]] && source "${VENV_DIR}/bin/activate"

ansible-playbook ${BASENAME%%.sh}.yaml "$@"
