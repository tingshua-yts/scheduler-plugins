set -x
set -e
version=v20220822-v0.0.1
image=ai-studio-registry.cn-beijing.cr.aliyuncs.com/tingshuai.yts/kubernetes/scheduler:$version

docker build --build-arg ARCH=amd64 --build-arg RELEASE_VERSION=$version -t $image -f build/scheduler/Dockerfile .