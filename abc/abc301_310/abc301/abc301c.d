import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    dchar at = '@';

    int[dchar] U, V;
    foreach (c; lowercase) {
        U[c] = V[c] = 0;
    }
    U[at] = V[at] = 0;

    foreach (s, t; zip(S, T)) {
        ++U[s], ++V[t];
    }

    bool isOk = true;
    foreach (c; "atcoder") {
        if (U[c] == V[c]) {
            continue;
        }

        if (U[c] < V[c]) {
            long D = V[c] - U[c];
            if (U[at] < D) {
                isOk = false;
                break;
            }
            U[at] -= D;
            U[c] = V[c];
        }
        else {
            long D = U[c] - V[c];
            if (V[at] < D) {
                isOk = false;
                break;
            }
            V[at] -= D;
            V[c] = U[c];
        }
    }

    string res = U == V ? "Yes" : "No";
    res.writeln;
}
