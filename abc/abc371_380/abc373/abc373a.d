import std;

void main() {
    int res;
    foreach (i; 1 .. 13) {
        string S;
        readf("%s\n", S);

        if (S.length == i) {
            ++res;
        }
    }

    res.writeln;
}
