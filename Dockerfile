FROM websphere-liberty:javaee8
VOLUME /config/dropins
# OpenShift picks up this label and creates a service
LABEL io.openshift.expose-services 9080/http

# OpenShift uses root group instead of root user
USER 1001
EXPOSE 9080

CMD ["liberty", "start"]


