FROM kota999/anaconda_jupyter:latest

#
# install watson
# 
# 
RUN cd /notebooks &&  npm install watson-developer-cloud --save && npm cache clean
RUN pip install --upgrade watson-developer-cloud 
RUN npm install json-query -g && npm cache clean
