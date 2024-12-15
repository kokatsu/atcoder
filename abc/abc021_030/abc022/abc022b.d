import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    bool[int] exists;
    foreach (_; 0 .. N) {
        int A;
        readf("%d\n", A);

        if (A in exists)
            ++res;

        exists[A] = true;
    }

    res.writeln;
}
