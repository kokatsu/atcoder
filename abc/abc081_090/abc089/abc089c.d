import std;

enum dchar[] T = "MARCH".to!(dchar[]);

void main() {
    int N;
    readf("%d\n", N);

    auto C = new long[](26);
    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        ++C[S[0] - 'A'];
    }

    bool[string] used;
    long res;
    foreach (p; T.permutations) {
        auto q = p[0 .. 3].array.dup;
        q.sort;
        string r = q.to!string;
        if (r in used) {
            continue;
        }
        used[r] = true;
        res += C[q[0] - 'A'] * C[q[1] - 'A'] * C[q[2] - 'A'];
    }

    res.writeln;
}
