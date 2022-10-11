import std;

void main() {
    long N;
    readf("%d\n", N);

    if (N == 0) {
        writeln(0);
        return;
    }

    dchar[] res;
    long b = 1;
    while (N != 0) {
        long d = abs(N%(-2*b)/b);
        res ~= to!dchar(d+'0');

        N -= b * d;
        b *= -2;
    }

    res.reverse;

    res.writeln;
}