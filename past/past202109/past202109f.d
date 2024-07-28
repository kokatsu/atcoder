import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto zeros = iota(N).filter!(i => S[i] == '0').map!(i => i + 1).array;
    auto L = zeros.length;
    if (L == 1) {
        writeln(-1);
        return;
    }

    int cnt;
    auto res = new ulong[](N);
    foreach (i, s; S) {
        if (s == '1') {
            res[i] = i + 1;
        }
        else {
            res[i] = zeros[++cnt%L];
        }
    }

    writefln("%(%s %)", res);
}