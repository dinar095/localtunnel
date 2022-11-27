FROM node:12
RUN npm install -g localtunnel
ENTRYPOINT ["lt"]
CMD ["-p", "80", "-l", "nginx", "-s", "subdomain"]