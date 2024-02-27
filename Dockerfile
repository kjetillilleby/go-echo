FROM scratch
# Expose HTTP port and set necessary environment variables
EXPOSE 8000

WORKDIR /work
# copy source code into the $GOPATH and switch to that directory
COPY ./go-echo go-echo

# the default command runs the service in the foreground
ENTRYPOINT ["/work/go-echo"]
