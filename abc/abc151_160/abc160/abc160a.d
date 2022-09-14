import std;

void main() {
    string S;
    readf("%s\n", S);

    writeln(S[2] == S[3] && S[4] == S[5] ? "Yes" : "No");
}