import std;

void main() {
    string S;
    long K;
    readf("%s\n%d\n", S, K);

    auto P = S.countUntil!(x => x != '1');
    writeln(P == -1 || P >= K ? S[0] : S[P]);
}