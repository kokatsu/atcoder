import std;

void main() {
    int res;

    foreach (_; 0 .. 5) {
        int N;
        readf("%d\n", N);

        res += max(40, N) / 5;
    }

    res.writeln;
}
