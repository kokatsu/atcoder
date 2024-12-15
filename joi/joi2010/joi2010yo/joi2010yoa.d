import std;

void main() {
    int res;
    readf("%d\n", res);

    foreach (_; 0 .. 9) {
        int N;
        readf("%d\n", N);

        res -= N;
    }

    res.writeln;
}
