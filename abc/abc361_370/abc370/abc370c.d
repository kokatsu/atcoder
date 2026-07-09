import std;

void main() {
    dchar[] S, T;
    readfln("%s", S);
    readfln("%s", T);

    size_t N = S.length;

    size_t[] L, U;
    foreach (i; 0 .. N) {
        if (S[i] > T[i]) {
            U ~= i;
        }
        else if (S[i] < T[i]) {
            L ~= i;
        }
    }

    L.reverse;

    dchar[][] X;
    foreach (u; U) {
        S[u] = T[u];
        X ~= S.dup;
    }

    foreach (l; L) {
        S[l] = T[l];
        X ~= S.dup;
    }

    string res = X.length == 0 ? "0" : format("%d\n%-(%s\n%)", X.length, X);
    res.writeln;
}
