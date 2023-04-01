import std;

void main() {
    string res;

    foreach (i; 0 .. 8) {
        string S;
        readf("%s\n", S);

        foreach (j, s; S) {
            if (s == '*') {
                res = to!dchar('a'+j).to!string ~ to!string(8-i);
            }
        }
    }

    res.writeln;
}