import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    if (N % 2 == 1) {
        writeln(-1);
        return;
    }

    int M = N / 2;

    auto res = iota(M).filter!(i => S[i] != S[M+i]).walkLength;
    res.writeln;
}