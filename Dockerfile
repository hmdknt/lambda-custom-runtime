FROM public.ecr.aws/lambda/provided:latest
RUN yum install -y awscli zip unzip jq util-linux
COPY bootstrap ${LAMBDA_RUNTIME_DIR}
COPY hello.sh ${LAMBDA_RUNTIME_DIR}
RUN chmod 755 ${LAMBDA_RUNTIME_DIR}/bootstrap ${LAMBDA_RUNTIME_DIR}/hello.sh
CMD ["hello.handler"]