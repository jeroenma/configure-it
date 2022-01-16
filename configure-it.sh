#!/usr/bin/env sh

APPL_NAME="Ansible"
ROOT_DIR="${HOME}"

# Find venv dir if existing.
[[ -e "${ROOT_DIR}/.venv/bin/activate" ]] && VENV_DIR="${ROOT_DIR}/.venv"
[[ -e "${ROOT_DIR}/.venv/${APPL_NAME}/bin/activate" ]] && VENV_DIR="${ROOT_DIR}/.venv/${APPL_NAME}"
[[ -e "${ROOT_DIR}/venv/bin/activate" ]] && VENV_DIR="${ROOT_DIR}/venv"
[[ -e "${ROOT_DIR}/venv/${APPL_NAME}/bin/activate" ]] && VENV_DIR="${ROOT_DIR}/venv/${APPL_NAME}"

# Activate venv if available.
[[ -n "${VENV_DIR}" ]] && source "${VENV_DIR}/bin/activate"

ansible-playbook configure-it.yaml "$@"
