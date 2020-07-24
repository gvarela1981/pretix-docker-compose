FROM pretix/standalone:stable
USER root
RUN export PYTHONPATH=$PYTHONPATH:/pretix/src && pip3 install mercadopago
USER pretixuser
COPY ./plugins/mercadopago/setup.py /pretix/src/pretix/plugins/setup.py
COPY ./plugins/mercadopago/pretix_mercadopago/ /pretix/src/pretix/plugins/pretix_mercadopago/
USER root
RUN chown pretixuser.pretixuser -R /pretix/src/pretix/plugins/pretix_mercadopago
RUN cd /pretix/src/pretix/plugins && python setup.py install
USER pretixuser
RUN cd /pretix/src && make production

