import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    auto S = readln.chomp;

    long M;
    foreach (_; 0 .. Q) {
        long t, x;
        readf("%d %d\n", t, x);

        if (t == 1)
            M = (M + x) % N;
        else
            S[(x - 1 + N - M) % N].writeln;
    }
}
