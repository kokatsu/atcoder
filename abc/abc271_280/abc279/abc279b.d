import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    writeln(S.canFind(T) ? "Yes" : "No");
}
