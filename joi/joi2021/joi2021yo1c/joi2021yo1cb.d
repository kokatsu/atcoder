import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int res;
    foreach (i, s; S) {
        if ((i % 2 == 0 && s != 'I') || (i % 2 == 1 && s != 'O')) {
            ++res;
        }
    }

    res.writeln;
}