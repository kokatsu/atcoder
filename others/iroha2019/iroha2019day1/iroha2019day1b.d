import std;

void main() {
    string S;
    ulong K;
    readf("%s\n%d\n", S, K);

    auto L = S.length;

    K %= L;

    string res = S[K..L] ~ S[0..K];
    res.writeln;
}