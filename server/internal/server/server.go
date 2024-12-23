package server

import (
	"context"
	"net/http"

	"connectrpc.com/connect"
	"golang.org/x/net/http2"
	"golang.org/x/net/http2/h2c"

	kissesv1 "github.com/cmp0st/kisses/server/gen/kisses/v1"        // generated by protoc-gen-go
	"github.com/cmp0st/kisses/server/gen/kisses/v1/kissesv1connect" // generated by protoc-gen-connect-go
)

type PingServer struct{}

func (s *PingServer) Ping(
	ctx context.Context,
	req *connect.Request[kissesv1.PingRequest],
) (*connect.Response[kissesv1.PingResponse], error) {

	if err := probeFirestore(ctx); err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}

	return connect.NewResponse(&kissesv1.PingResponse{
		Msg: "pong",
	}), nil
}

func Run() error {
	greeter := &PingServer{}
	mux := http.NewServeMux()
	path, handler := kissesv1connect.NewKissesServiceHandler(greeter)
	mux.Handle(path, handler)
	return http.ListenAndServe(
		"0.0.0.0:8080",
		// Use h2c so we can serve HTTP/2 without TLS.
		h2c.NewHandler(mux, &http2.Server{}),
	)
}
