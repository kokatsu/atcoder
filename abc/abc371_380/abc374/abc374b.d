import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    size_t U = S.length, V = T.length;
    size_t W = min(U, V);

    size_t res;
    if (U != V) {
        res = W + 1;
    }

    foreach (i; 0 .. W) {
        if (S[i] != T[i]) {
            res = i + 1;
            break;
        }
    }

    res.writeln;
}
