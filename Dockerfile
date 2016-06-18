FROM kota999/anaconda_jupyter:latest

#
# Install watson and tools
# 
RUN cd /notebooks &&  npm install watson-developer-cloud --save && npm cache clean
RUN pip install --upgrade watson-developer-cloud 
RUN npm install json-query -g && npm cache clean


#
# Arrange workspace
# 
RUN mkdir -p /notebooks/nb_demo && \
    mkdir -p /notebooks/nb_demo/watson && \
    mkdir -p /notebooks/nb_demo/panda 
COPY files/watson/* /notebooks/nb_demo/watson/