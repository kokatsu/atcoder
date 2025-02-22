import std;

void main() {
    dchar[] S;
    readf("%s\n", S);

    ulong w;
    dchar[] res = S.dup;
    foreach (i, c; S) {
        if (c == 'A') {
            if (w == i) {
                w = i + 1;
                continue;
            }

            res[w++] = 'A';
            while (w <= i) {
                res[w++] = 'C';
            }
        }
        else if (c != 'W') {
            w = i + 1;
        }
    }

    res.writeln;
}
