package trace

import (
	"fmt"
	"io"
)

// Tracer .
type Tracer interface {
	Trace(...interface{})
}

type tracer struct {
	out io.Writer
}

// New .
func New(w io.Writer) Tracer {
	return &tracer{out: w}
}

func (t *tracer) Trace(a ...interface{}) {
	t.out.Write([]byte(fmt.Sprint(a...)))
	t.out.Write([]byte("\n"))
}