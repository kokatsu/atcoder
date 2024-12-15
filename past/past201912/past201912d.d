import std;

void main() {
    int N;
    readf("%d\n", N);

    auto cnts = new int[](N + 1);
    cnts[0] = 1;

    int T;
    foreach (_; 0 .. N) {
        int A;
        readf("%d\n", A);

        ++cnts[A];

        if (cnts[A] > 1) {
            T = A;
        }
    }

    string res = "Correct";
    if (T > 0) {
        auto F = cnts.minIndex;
        res = format("%d %d", T, F);
    }

    res.writeln;
}
