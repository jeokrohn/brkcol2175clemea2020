FROM jupyter/base-notebook

USER root

ADD ngrok/ngrok .
RUN install -v -D ngrok /bin/ngrok && rm -f ngrok

ADD requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt && \
    rm -f requirements.txt

ADD Notebook/*.ipynb work/Notebook/
ADD Notebook/*.pdf work/Notebook/

ADD jupyter_notebook_config.py /home/jovyan/.jupyter/
RUN chown -R jovyan:users .

USER jovyan

EXPOSE 8888 4040

