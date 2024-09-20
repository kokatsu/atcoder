import std;

void main() {
    string S;
    readf("%s\n", S);

    foreach (x; lowercase) {
        if (!S.canFind(x)) {
            x.writeln;
            return;
        }
    }

    writeln("None");
}