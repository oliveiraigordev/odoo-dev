FROM odoo:16.0

USER root
RUN usermod -u 1000 odoo

RUN mkdir -p /mnt/extra-addons/{seguros,enterprise,custom-addons,third_addons}
RUN mkdir -p /mnt/{odoo-data,odoo-backup}

RUN chown odoo:odoo -R /mnt/extra-addons/{seguros,enterprise,custom-addons,third_addons}
RUN chown odoo:odoo -R /mnt/{odoo-data,odoo-backup}

COPY --chown=odoo:odoo ./repos/seguros/addons/extra-addons/seguros /extra-addons/seguros
COPY --chown=odoo:odoo ./repos/global/addons/custom-addons /mnt/extra-addons/custom-addons
COPY --chown=odoo:odoo ./repos/global/addons/enterprise-16.0 /mnt/extra-addons/enterprise
COPY --chown=odoo:odoo ./repos/global/addons/third_addons /mnt/extra-addons/third_addons
COPY --chown=odoo:odoo ./repos/requirements.txt /mnt/extra-addons/requirements.txt

COPY --chown=odoo:odoo ./.vscode /mnt/.vscode
COPY --chown=odoo:odoo ./odoo/odoo.conf /etc/odoo/odoo.conf

RUN find /mnt/extra-addons -name "requirements.txt" -exec sh -c 'pip install -r "$0"' {} \;

USER root