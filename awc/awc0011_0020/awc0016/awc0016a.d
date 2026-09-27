import std;

void main() {
    int N;
    readfln("%d", N);

    long C, S;
    foreach (_; 0 .. N) {
        long A, B;
        readfln("%d %d", A, B);

        if (A > B) {
            ++C, S += A - B;
        }
    }

    string res = format("%d %d", C, S);
    res.writeln;
}
