ARG ODOO_VERSION=16.0
FROM odoo:${ODOO_VERSION}
EXPOSE 8888
USER root
RUN pip3 install debugpy
RUN echo "import debugpy;debugpy.listen(('0.0.0.0', 8888));debugpy.wait_for_client()" >> /usr/lib/python3/dist-packages/odoo/addons/__init__.py
USER odoo