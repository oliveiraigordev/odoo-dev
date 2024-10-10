FROM odoo:16.0

COPY --chown=${USERNAME}:${USERNAME} ./.vscode /mnt/.vscode
COPY --chown=${USERNAME}:${USERNAME} ./odoo/odoo.conf /etc/odoo/odoo.conf

USER root