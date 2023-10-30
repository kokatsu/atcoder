import std;

void main() {
    int N;
    readf("%d\n", N);

    bool[Tuple!(int, int)] dict;
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        if (A > B) swap(A, B);

        dict[tuple(A, B)] = true;
    }

    auto res = dict.length;
    res.writeln;
}