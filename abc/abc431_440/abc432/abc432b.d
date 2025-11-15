import std;

void main() {
    dchar[] X;
    readf("%s\n", X);

    dchar[] res = X.dup;
    X.sort;
    foreach (p; X.permutations) {
        dchar[] q = p.array;
        if (q[0] == '0') {
            continue;
        }

        if (res > q) {
            res = q;
        }
    }

    res.writeln;
}
