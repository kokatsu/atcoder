import std;

void main() {
    string S;
    readf("%s\n", S);

    foreach (c; lowercase) {
        if (S.count(c) == 0) {
            c.writeln;
            return;
        }
    }
}
