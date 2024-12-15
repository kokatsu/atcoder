import std;

void main() {
    int X, N;
    readf("%d\n%d\n", X, N);

    int res;
    while (X < N) {
        if (X % 3 == 0)
            ++X;
        else if (X % 3 == 1)
            X *= 2;
        else
            X *= 3;

        ++res;
    }

    res.writeln;
}
