import std;

void main() {
    int N;
    readfln("%d", N);

    int res;
    foreach (_; 0 .. N) {
        int A, B;
        string S;
        readfln("%d %d %s", A, B, S);

        if (S == "keep") {
            res += B - A;
        }
    }

    res.writeln;
}
