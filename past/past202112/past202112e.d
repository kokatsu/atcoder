import std;

void main() {
    string N;
    readf("%s\n", N);

    string L = "12345";

    int res;
    foreach (i, n; N) {
        if (i == 0) {
            res += 500;
        }
        else if (n == N[i-1]) {
            res += 301;
        }
        else if (L.canFind(n) == L.canFind(N[i-1])) {
            res += 210;
        }
        else {
            res += 100;
        }
    }

    res.writeln;
}