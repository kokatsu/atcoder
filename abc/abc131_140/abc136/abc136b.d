import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (i; 1 .. N + 1) {
        auto S = i.to!string;
        if (S.length % 2 == 1)
            ++res;
    }

    res.writeln;
}
