import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    size_t L = S.length;

    size_t[] P = new size_t[](L);
    size_t Q;
    foreach (i, t; T) {
        if (Q >= L) {
            break;
        }

        if (t == S[Q]) {
            P[Q++] = i + 1;
        }
    }

    string res = format("%(%d %)", P);
    res.writeln;
}
