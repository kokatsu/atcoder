import std;

void main() {
    int K;
    string S;
    readf("%d\n%s\n", K, S);

    if (S.length <= K) S.writeln;
    else writeln(S[0..K], "...");
}