FROM gcr.io/oss-fuzz-base/base-builder

RUN git clone https://github.com/LeulShiferaw/buttercup-stack-repo.git /src/stack-test

WORKDIR /src/stack-test

COPY build.sh $SRC/
