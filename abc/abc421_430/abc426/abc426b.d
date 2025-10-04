import std;

void main() {
    dchar[] S;
    readf("%s\n", S);

    S.sort;

    dchar res = S[0] == S[1] ? S[$ - 1] : S[0];
    res.writeln;
}
