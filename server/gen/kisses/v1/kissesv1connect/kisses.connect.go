// Code generated by protoc-gen-connect-go. DO NOT EDIT.
//
// Source: kisses/v1/kisses.proto

package kissesv1connect

import (
	connect "connectrpc.com/connect"
	context "context"
	errors "errors"
	v1 "github.com/cmp0st/kisses/server/gen/kisses/v1"
	http "net/http"
	strings "strings"
)

// This is a compile-time assertion to ensure that this generated file and the connect package are
// compatible. If you get a compiler error that this constant is not defined, this code was
// generated with a version of connect newer than the one compiled into your binary. You can fix the
// problem by either regenerating this code with an older version of connect or updating the connect
// version compiled into your binary.
const _ = connect.IsAtLeastVersion1_13_0

const (
	// KissesServiceName is the fully-qualified name of the KissesService service.
	KissesServiceName = "kisses.v1.KissesService"
)

// These constants are the fully-qualified names of the RPCs defined in this package. They're
// exposed at runtime as Spec.Procedure and as the final two segments of the HTTP route.
//
// Note that these are different from the fully-qualified method names used by
// google.golang.org/protobuf/reflect/protoreflect. To convert from these constants to
// reflection-formatted method names, remove the leading slash and convert the remaining slash to a
// period.
const (
	// KissesServicePingProcedure is the fully-qualified name of the KissesService's Ping RPC.
	KissesServicePingProcedure = "/kisses.v1.KissesService/Ping"
)

// These variables are the protoreflect.Descriptor objects for the RPCs defined in this package.
var (
	kissesServiceServiceDescriptor    = v1.File_kisses_v1_kisses_proto.Services().ByName("KissesService")
	kissesServicePingMethodDescriptor = kissesServiceServiceDescriptor.Methods().ByName("Ping")
)

// KissesServiceClient is a client for the kisses.v1.KissesService service.
type KissesServiceClient interface {
	Ping(context.Context, *connect.Request[v1.PingRequest]) (*connect.Response[v1.PingResponse], error)
}

// NewKissesServiceClient constructs a client for the kisses.v1.KissesService service. By default,
// it uses the Connect protocol with the binary Protobuf Codec, asks for gzipped responses, and
// sends uncompressed requests. To use the gRPC or gRPC-Web protocols, supply the connect.WithGRPC()
// or connect.WithGRPCWeb() options.
//
// The URL supplied here should be the base URL for the Connect or gRPC server (for example,
// http://api.acme.com or https://acme.com/grpc).
func NewKissesServiceClient(httpClient connect.HTTPClient, baseURL string, opts ...connect.ClientOption) KissesServiceClient {
	baseURL = strings.TrimRight(baseURL, "/")
	return &kissesServiceClient{
		ping: connect.NewClient[v1.PingRequest, v1.PingResponse](
			httpClient,
			baseURL+KissesServicePingProcedure,
			connect.WithSchema(kissesServicePingMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
	}
}

// kissesServiceClient implements KissesServiceClient.
type kissesServiceClient struct {
	ping *connect.Client[v1.PingRequest, v1.PingResponse]
}

// Ping calls kisses.v1.KissesService.Ping.
func (c *kissesServiceClient) Ping(ctx context.Context, req *connect.Request[v1.PingRequest]) (*connect.Response[v1.PingResponse], error) {
	return c.ping.CallUnary(ctx, req)
}

// KissesServiceHandler is an implementation of the kisses.v1.KissesService service.
type KissesServiceHandler interface {
	Ping(context.Context, *connect.Request[v1.PingRequest]) (*connect.Response[v1.PingResponse], error)
}

// NewKissesServiceHandler builds an HTTP handler from the service implementation. It returns the
// path on which to mount the handler and the handler itself.
//
// By default, handlers support the Connect, gRPC, and gRPC-Web protocols with the binary Protobuf
// and JSON codecs. They also support gzip compression.
func NewKissesServiceHandler(svc KissesServiceHandler, opts ...connect.HandlerOption) (string, http.Handler) {
	kissesServicePingHandler := connect.NewUnaryHandler(
		KissesServicePingProcedure,
		svc.Ping,
		connect.WithSchema(kissesServicePingMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	return "/kisses.v1.KissesService/", http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		switch r.URL.Path {
		case KissesServicePingProcedure:
			kissesServicePingHandler.ServeHTTP(w, r)
		default:
			http.NotFound(w, r)
		}
	})
}

// UnimplementedKissesServiceHandler returns CodeUnimplemented from all methods.
type UnimplementedKissesServiceHandler struct{}

func (UnimplementedKissesServiceHandler) Ping(context.Context, *connect.Request[v1.PingRequest]) (*connect.Response[v1.PingResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("kisses.v1.KissesService.Ping is not implemented"))
}
