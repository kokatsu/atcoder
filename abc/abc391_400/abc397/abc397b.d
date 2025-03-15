import std;

void main() {
    string S;
    readf("%s\n", S);

    int res;
    foreach (i, s; S) {
        int pos = i.to!int + res + 1;
        if ((s == 'o') != (pos % 2 == 0)) {
            ++res;
        }
    }

    if ((S.length + res) % 2 == 1) {
        ++res;
    }

    res.writeln;
}
