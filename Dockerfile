FROM amazon/aws-cli:latest
RUN curl -sL -o /usr/bin/jq https://blockin-public.oss-cn-beijing.aliyuncs.com/githubAction/kodermax/kubectl-aws-eks/jq
RUN chmod +x /usr/bin/jq
RUN curl -sL -o /usr/bin/kubectl https://blockin-public.oss-cn-beijing.aliyuncs.com/githubAction/kodermax/kubectl-aws-eks/kubectl && \
    curl -sL -o /usr/bin/aws-iam-authenticator https://blockin-public.oss-cn-beijing.aliyuncs.com/githubAction/kodermax/kubectl-aws-eks/aws-iam-authenticator  && \
    chmod +x /usr/bin/aws-iam-authenticator && \
    chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
