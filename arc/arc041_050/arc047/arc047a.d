import std;

void main() {
    int N, L;
    readfln("%d %d", N, L);

    string S;
    readfln("%s", &S);

    int res, T = 1;
    foreach (s; S) {
        if (s == '+') {
            if (T >= L) {
                ++res;
                T = 1;
            }
            else {
                ++T;
            }
        }
        else {
            --T;
        }
    }

    res.writeln;
}
