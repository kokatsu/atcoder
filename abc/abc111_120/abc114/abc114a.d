import std;

void main() {
    string X;
    readf("%s\n", X);

    string T = "753";

    writeln(T.canFind(X) ? "YES" : "NO");
}