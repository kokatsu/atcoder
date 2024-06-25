import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    bool[dchar] seen;

    dchar[] res;
    foreach_reverse (s; S) {
        if (s !in seen) {
            res ~= s;
            seen[s] = true;
        }
    }

    res.reverse;

    res.writeln;
}