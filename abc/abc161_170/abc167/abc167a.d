import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    auto len = S.length;

    writeln(S == T[0 .. len] ? "Yes" : "No");
}
