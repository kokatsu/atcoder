import std;

void main() {
    string T, U;
    readf("%s\n%s\n", T, U);

    auto LT = T.length, LU = U.length;
    auto D = LT - LU + 1;

    bool ok;
    foreach (i; 0 .. D) {
        bool check = true;
        foreach (j; 0 .. LU) {
            if (T[i + j] != U[j] && T[i + j] != '?') {
                check = false;
                break;
            }
        }

        if (check) {
            ok = true;
            break;
        }
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
