readonly OUTPUT_DIR="./lib/generated"
readonly PROTO_DIR="/usr/local/include"

mkdir -p $OUTPUT_DIR

protoc --dart_out=grpc:lib/generated --proto_path=proto ./proto/*.proto
protoc --dart_out=grpc:lib/generated --proto_path=$PROTO_DIR /usr/local/include/google/protobuf/timestamp.proto
protoc --dart_out=grpc:lib/generated --proto_path=$PROTO_DIR /usr/local/include/google/protobuf/empty.proto