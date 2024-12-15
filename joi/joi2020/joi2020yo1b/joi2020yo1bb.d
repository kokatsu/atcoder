import std;

void main() {
    int N, A, B;
    dchar[] S;
    readf("%d %d %d\n%s\n", N, A, B, S);

    S[A - 1 .. B].reverse;

    S.writeln;
}
