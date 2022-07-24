config=/Users/tingshuai.yts/.kube/config.test-minio-gateway
go run -gcflags="all=-N -l" cmd/scheduler/main.go  \
 --kube-api-qps=200 \
 --kube-api-burst=300 \
 --leader-elect=false \
 --profiling=false \
 --authentication-kubeconfig=$config \
 --authorization-kubeconfig=$config  \
 --kubeconfig=$config  \
 --config=/Users/tingshuai.yts/project/scheduler-plugins/ytsexample/scheduler-config.yaml \
 --v=5