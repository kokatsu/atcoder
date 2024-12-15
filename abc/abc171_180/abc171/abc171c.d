import std;

void main() {
    long N;
    readf("%d\n", N);

    dchar[] res;

    while (N > 0) {
        --N;

        long d = N % 26;
        res ~= to!dchar(d + 'a');

        N /= 26;
    }

    res.reverse;

    res.writeln;
}
