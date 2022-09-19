import std;

void main() {
    string S;
    readf("%s\n", S);

    bool isOK = S.canFind('A') && S.canFind('B');
    writeln(isOK ? "Yes" : "No");
}