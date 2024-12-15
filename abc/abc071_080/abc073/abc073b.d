import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (_; 0 .. N) {
        int l, r;
        readf("%d %d\n", l, r);

        res += r - l + 1;
    }

    res.writeln;
}
