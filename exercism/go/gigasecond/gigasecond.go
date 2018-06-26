package gigasecond

import "time"

const (
	gigaSecond = time.Duration(1000000000) * time.Second
)

func AddGigasecond(t time.Time) time.Time {
	t = t.Add(gigaSecond)
	return t
}
