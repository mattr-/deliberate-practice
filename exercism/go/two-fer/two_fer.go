// This is the exercism exercise 'Two Fer' on the go track
package twofer

// Share a thing with another human and return how you're going to share it.
func ShareWith(name string) string {
	if len(name) == 0 {
		return "One for you, one for me."
	} else {
		return "One for " + name + ", one for me."
	}
}
