FROM odoo:14
EXPOSE 8888
USER root
RUN pip3 install ptvsd
RUN echo "import ptvsd;ptvsd.enable_attach(address=('0.0.0.0', 8888));ptvsd.wait_for_attach()" >> /usr/lib/python3/dist-packages/odoo/addons/__init__.py
USER odoo