import std;

void main() {
    ulong N, M, Q;
    readf("%d %d %d\n", N, M, Q);

    Tuple!(ulong, ulong)[char] pos;
    foreach (i; 0 .. N) {
        string s;
        readf("%s\n", s);

        foreach (j, x; s) {
            if (x == '*')
                continue;

            pos[x] = tuple(i + 1, j + 1);
        }
    }

    foreach (_; 0 .. Q) {
        char q;
        readf("%c\n", q);

        if (q in pos) {
            writeln(pos[q][0], " ", pos[q][1]);
        }
        else {
            writeln("NA");
        }
    }
}
