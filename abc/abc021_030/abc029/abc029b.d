import std;

void main() {
    int res;

    foreach (_; 0 .. 12) {
        string S;
        readf("%s\n", S);

        if (S.canFind('r')) {
            ++res;
        }
    }

    res.writeln;
}